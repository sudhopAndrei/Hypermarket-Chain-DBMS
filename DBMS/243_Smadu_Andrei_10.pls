--10.) Sa se permita doar utilizatorului ADMIN_MAGAZIN sa adauge,
-- sa modifice doar campul cantitate ,dar nu sa stearga aprovizionarile in intervalul orar 22:00 - 08:00.
-- Utilizator MANAGER_LOGISTICA nu are restrictii        
    
CREATE OR REPLACE TRIGGER actiuni_aprovizionare
BEFORE INSERT OR UPDATE OR DELETE ON APROVIZIONARE
BEGIN
    IF (USER = 'MANAGER_LOGISTICA') THEN
        NULL;
    ELSIF (USER LIKE 'ADMIN_MAGAZIN_%' AND TO_NUMBER(SUBSTR(USER, 15)) BETWEEN 1 AND 10) THEN
        IF (TO_CHAR(SYSDATE, 'HH24:MI') >= '08:00' AND TO_CHAR(SYSDATE, 'HH24:MI') < '22:00') THEN
            RAISE_APPLICATION_ERROR(-20000, 'Nu se realizeaza aprovizionari in timpul orelor de program');
        ELSE
            IF UPDATING THEN
                IF UPDATING('id_magazin') OR UPDATING('EUID') OR UPDATING('cod_produs') OR UPDATING('data_aprovizionare') THEN
                    RAISE_APPLICATION_ERROR(-20002, 'Nu se poate modifica acest atribut');
                END IF;
            END IF;
            
            IF DELETING THEN
                RAISE_APPLICATION_ERROR(-20003, 'Nu aveti acces la stergere');
            END IF;
        END IF;
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Nu aveti acces la comenzile de administrator');
    END IF;
END;   
