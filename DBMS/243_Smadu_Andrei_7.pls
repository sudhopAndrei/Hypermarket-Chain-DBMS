--7.) Sa se afiseze pentru fiecare achizitie realizata
-- la un magazin cu exact 3 angajati lista de produse din comanda

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE lista_produse IS
    CURSOR c_achizitii(p_id_magazin NUMBER) IS
        SELECT AC.cod_tranzactie
        FROM ACHIZITIE AC
        JOIN ANGAJAT AN ON AN.CNP_angajat = AC.CNP_angajat
        WHERE AN.id_magazin = p_id_magazin;
    
    v_cod_tranzactie NUMBER;
BEGIN
    FOR i IN (SELECT id_magazin
                FROM MAGAZIN M
                WHERE (SELECT COUNT(DISTINCT(CNP_angajat))
                        FROM ANGAJAT A
                        WHERE M.id_magazin = A.id_magazin) = 3) LOOP
                        
        OPEN c_achizitii(i.id_magazin);
        
        LOOP
            FETCH c_achizitii INTO v_cod_tranzactie;
            
            EXIT WHEN c_achizitii%NOTFOUND;
            
            DBMS_OUTPUT.PUT_LINE('Cod achiziție: ' || v_cod_tranzactie);
            DBMS_OUTPUT.PUT_LINE(' *Lista de produse:');
            
            FOR j IN (SELECT P.nume_produs
                        FROM PRODUS P
                        JOIN ACHIZITIE_PRODUS AP ON AP.cod_produs = P.cod_produs
                        WHERE AP.cod_tranzactie = v_cod_tranzactie) LOOP
                        
                DBMS_OUTPUT.PUT_LINE(' -> ' || j.nume_produs);
            END LOOP;
            
            DBMS_OUTPUT.PUT_LINE(' ');
        END LOOP;
        
        CLOSE c_achizitii;
    END LOOP;
END;
/

EXEC lista_produse;
