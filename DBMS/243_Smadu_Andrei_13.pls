--13.) Sa se creeze un pachet ce analizeaza performanta angajatilor pe baza vanzarilor procesate.
-- Vom calcula vanzarile totale pentru fiecare angajat dintr-un magazin dat si, pentru angajatii
-- care au vanzari peste un prag stabilit, vom creste salariul in functie de cat au vandut.
-- Inainte de a creste salariul vom afisa o colectie cu angajatii eligibili, iar abia apoi se va
-- lua decizia de a se modifica sau nu

CREATE OR REPLACE PACKAGE performanta_angajati IS
    TYPE rec_raport_angajati IS RECORD (
        CNP_angajat ANGAJAT.CNP_angajat%TYPE,
        nume_complet ANGAJAT.nume_complet%TYPE,
        salariu_curent ANGAJAT.salariu%TYPE,
        total_vanzari NUMBER,
        salariu_nou ANGAJAT.salariu%TYPE
    );

    TYPE raport_angajati_type IS TABLE OF rec_raport_angajati;

    FUNCTION total_vanzari_angajat(p_CNP_angajat ANGAJAT.CNP_angajat%TYPE) RETURN NUMBER;
    FUNCTION calcul_salariu_nou(p_salariu ANGAJAT.salariu%TYPE, p_vanzari_angajat NUMBER) RETURN NUMBER;
    
    PROCEDURE angajati_eligibili(p_id_magazin MAGAZIN.id_magazin%TYPE, p_prag_vanzari NUMBER);
    PROCEDURE majorare_salarii(p_id_magazin MAGAZIN.id_magazin%TYPE, p_prag_vanzari NUMBER);
    
    MAGAZIN_INEXISTENT EXCEPTION;
END performanta_angajati;
/

CREATE OR REPLACE PACKAGE BODY performanta_angajati IS
    FUNCTION total_vanzari_angajat(p_CNP_angajat ANGAJAT.CNP_angajat%TYPE) RETURN NUMBER IS
        v_total NUMBER := 0;
    BEGIN
        SELECT NVL(SUM(AP.cantitate * AP.pret), 0)
        INTO v_total
        FROM ACHIZITIE_PRODUS AP
        JOIN ACHIZITIE A ON A.cod_tranzactie = AP.cod_tranzactie
        WHERE A.CNP_angajat = p_CNP_angajat;
        
        RETURN v_total;
    END total_vanzari_angajat;
    
    FUNCTION calcul_salariu_nou(p_salariu ANGAJAT.salariu%TYPE, p_vanzari_angajat NUMBER) RETURN NUMBER IS
    BEGIN
        IF p_vanzari_angajat > (p_salariu * 5) THEN
            RETURN p_salariu * 1.10;
        ELSIF p_vanzari_angajat > (p_salariu * 3) THEN
            RETURN p_salariu * 1.05;
        ELSE
            RETURN p_salariu;
        END IF;
    END calcul_salariu_nou;
    
    PROCEDURE angajati_eligibili(p_id_magazin MAGAZIN.id_magazin%TYPE, p_prag_vanzari NUMBER) IS
        v_count_magazin NUMBER;
        v_salariu_nou NUMBER;
        
        t_raport_angajati raport_angajati_type;
    BEGIN
        t_raport_angajati := raport_angajati_type();
    
        SELECT COUNT(*) INTO v_count_magazin
        FROM MAGAZIN 
        WHERE id_magazin = p_id_magazin;
        
        IF v_count_magazin = 0 THEN
            RAISE MAGAZIN_INEXISTENT;
        END IF;
    
        FOR i IN (SELECT * 
                FROM ANGAJAT
                WHERE id_magazin = p_id_magazin) LOOP
                
            IF total_vanzari_angajat(i.CNP_angajat) >= p_prag_vanzari THEN
                IF calcul_salariu_nou(i.salariu, total_vanzari_angajat(i.CNP_angajat)) > i.salariu THEN
                    
                    t_raport_angajati.EXTEND;
                    t_raport_angajati(t_raport_angajati.LAST).CNP_angajat := i.CNP_angajat;
                    t_raport_angajati(t_raport_angajati.LAST).nume_complet := i.nume_complet;
                    t_raport_angajati(t_raport_angajati.LAST).salariu_curent := i.salariu;
                    t_raport_angajati(t_raport_angajati.LAST).total_vanzari := total_vanzari_angajat(i.CNP_angajat);
                    t_raport_angajati(t_raport_angajati.LAST).salariu_nou := calcul_salariu_nou(i.salariu, total_vanzari_angajat(i.CNP_angajat));
                END IF;
            END IF;
        END LOOP;
        
        IF t_raport_angajati.COUNT > 0 THEN
            FOR i IN 1..t_raport_angajati.COUNT LOOP
                DBMS_OUTPUT.PUT_LINE('*Angajat ' || i || ':');
                DBMS_OUTPUT.PUT_LINE('CNP: ' || t_raport_angajati(i).CNP_angajat);
                DBMS_OUTPUT.PUT_LINE('Nume: ' || t_raport_angajati(i).nume_complet);
                DBMS_OUTPUT.PUT_LINE('Salariu curent: ' || t_raport_angajati(i).salariu_curent);
                DBMS_OUTPUT.PUT_LINE('Vanzari totale: ' || t_raport_angajati(i).total_vanzari);
                DBMS_OUTPUT.PUT_LINE('Salariu nou: ' || t_raport_angajati(i).salariu_nou);
                DBMS_OUTPUT.PUT_LINE(' ');
            END LOOP;
        ELSE
            DBMS_OUTPUT.PUT_LINE('Niciun angajat eligibil');
        END IF;
    EXCEPTION
        WHEN MAGAZIN_INEXISTENT THEN DBMS_OUTPUT.PUT_LINE('Magazinul nu exista');
    END angajati_eligibili;
    
    PROCEDURE majorare_salarii(p_id_magazin MAGAZIN.id_magazin%TYPE, p_prag_vanzari NUMBER) IS
        v_count_magazin NUMBER;
        v_salariu_nou NUMBER;
        v_modificari NUMBER := 0;
    BEGIN
        SELECT COUNT(*) INTO v_count_magazin
        FROM MAGAZIN 
        WHERE id_magazin = p_id_magazin;
        
        IF v_count_magazin = 0 THEN
            RAISE MAGAZIN_INEXISTENT;
        END IF;

        FOR i IN (SELECT * 
                FROM ANGAJAT
                WHERE id_magazin = p_id_magazin) LOOP

            IF total_vanzari_angajat(i.CNP_angajat) >= p_prag_vanzari THEN
                IF calcul_salariu_nou(i.salariu, total_vanzari_angajat(i.CNP_angajat)) > i.salariu THEN
                
                    UPDATE ANGAJAT
                    SET salariu = calcul_salariu_nou(i.salariu, total_vanzari_angajat(i.CNP_angajat))
                    WHERE CNP_angajat = i.CNP_angajat;
                    
                    v_modificari := v_modificari + 1;
                END IF;
            END IF;
        END LOOP;

        IF v_modificari > 0 THEN
            COMMIT;
            DBMS_OUTPUT.PUT_LINE('Salarii majorate: ' || v_modificari);
        ELSE
            DBMS_OUTPUT.PUT_LINE('Niciun angajat eligibil pentru majorare');
        END IF;

    EXCEPTION
        WHEN MAGAZIN_INEXISTENT THEN
            DBMS_OUTPUT.PUT_LINE('Magazinul nu exista');
    END majorare_salarii;
END performanta_angajati;
/
