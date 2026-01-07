--11.) Sa se interzica achizitionarea produselor expirate si, in cazul in care achizitia 
-- contine produse cu pretul peste 1000 de lei iar angajatul care o proceseaza are sub
-- 1 an vechime, sa se modifice statusul achizitiei in "Necesita revizuire supervizor"

SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER revizuire_produse
BEFORE INSERT ON ACHIZITIE_PRODUS
FOR EACH ROW
DECLARE
    v_pret PRODUS.pret%TYPE;
    v_data_expirare PRODUS.data_expirare%TYPE;
    v_data_angajare ANGAJAT.data_angajare%TYPE;
    
BEGIN
    SELECT pret, data_expirare INTO v_pret, v_data_expirare
    FROM PRODUS
    WHERE cod_produs = :NEW.cod_produs;
    
    SELECT data_angajare INTO v_data_angajare
    FROM ANGAJAT AN
    JOIN ACHIZITIE AC ON AC.CNP_angajat = AN.CNP_angajat
    WHERE AC.cod_tranzactie = :NEW.cod_tranzactie;
    
    IF (v_data_expirare < TRUNC(SYSDATE)) THEN
        RAISE_APPLICATION_ERROR(-20000, 'Produs expirat');
    END IF;
    
    IF (v_pret > 1000) AND (TRUNC(MONTHS_BETWEEN(SYSDATE, v_data_angajare)) < 12) THEN
        UPDATE ACHIZITIE
        SET status = 'Necesita revizuire supervizor'
        WHERE cod_tranzactie = :NEW.cod_tranzactie;
    END IF;
END;
/

--Achizitionare produs expirat
INSERT INTO PRODUS (cod_produs, nume_produs, pret, cod_promotie, data_fabricare, data_expirare) VALUES (50, 'Paine', 5, NULL, TO_DATE('15-03-2024', 'DD-MM-YYYY'), TO_DATE('20-03-2024', 'DD-MM-YYYY'));
INSERT INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie, cantitate, pret) VALUES (50, 1001, 2, 5);

--Achizitionare produs scump pentru angajat < 1 an
DECLARE
    v_pret PRODUS.pret%TYPE;
    v_data_angajare ANGAJAT.data_angajare%TYPE;
    v_status ACHIZITIE.status%TYPE;
BEGIN
    SELECT P.pret, AN.data_angajare, AC.status INTO v_pret, v_data_angajare, v_status
    FROM PRODUS P, ANGAJAT AN, ACHIZITIE AC
    WHERE P.cod_produs = 3 AND AN.CNP_angajat = 1750215789012 AND AC.cod_tranzactie = 1024;
    
    DBMS_OUTPUT.PUT_LINE('Inseram produsul cu pretul de ' || v_pret ||
    ' in achizitia procesata de un angajat cu vechimea de ' || (TRUNC(MONTHS_BETWEEN(SYSDATE, v_data_angajare) / 12, 1))
    || ' ani');
    DBMS_OUTPUT.PUT_LINE('Status initial achizitie 1024: ' || v_status);
    
    INSERT INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie, cantitate, pret) VALUES (3, 1024, 1, 1799.99);
    
    SELECT status INTO v_status
    FROM ACHIZITIE
    WHERE cod_tranzactie = 1024;
    
    DBMS_OUTPUT.PUT_LINE('Status actual achizitie 1024: ' || v_status);
END;
/


