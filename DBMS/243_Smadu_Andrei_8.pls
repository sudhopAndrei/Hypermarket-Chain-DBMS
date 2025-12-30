--8.) Sa se afiseze numele celui mai bine platit angajat cu salariul mai mare decat o suma data
-- care a procesat cel putin o comanda in valoare de minim 500 de lei

SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION angajat_salariu_max(p_suma ANGAJAT.salariu%TYPE)
    RETURN VARCHAR2 IS

    v_nume_angajat ANGAJAT.nume_complet%TYPE;
    
BEGIN
    SELECT A.nume_complet INTO v_nume_angajat
    FROM ANGAJAT A
    WHERE A.salariu > p_suma
    AND EXISTS (SELECT *
                FROM ACHIZITIE AC
                JOIN ACHIZITIE_PRODUS AP ON AP.cod_tranzactie = AC.cod_tranzactie
                WHERE AC.CNP_angajat = A.CNP_angajat
                GROUP BY AC.cod_tranzactie
                HAVING SUM(AP.cantitate * AP.pret) >= 500
    )
    AND A.salariu = (SELECT MAX(A2.salariu)
                    FROM ANGAJAT A2
                    WHERE A2.salariu > p_suma
                    AND EXISTS (SELECT *
                                FROM ACHIZITIE AC2
                                JOIN ACHIZITIE_PRODUS AP2 ON 
                                    AP2.cod_tranzactie = AC2.cod_tranzactie
                                WHERE AC2.CNP_angajat = A2.CNP_angajat
                                GROUP BY AC2.cod_tranzactie
                                HAVING SUM(AP2.cantitate * AP2.pret) >= 500));
    
    RETURN v_nume_angajat;
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20000, 'Nu exista angajati care indeplindesc conditiile');
    WHEN TOO_MANY_ROWS THEN
        RAISE_APPLICATION_ERROR(-20001, 'Mai multi angajati care respecta cerintele cu acelasi salariu maxim');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'Alta eroare:' || SQLERRM);

END angajat_salariu_max;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE(angajat_salariu_max(5000));
    DBMS_OUTPUT.PUT_LINE(angajat_salariu_max(7000));
END;
/
