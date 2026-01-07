--12.) Sa se permita doar user-ului MANAGER_LOGISTICA operatiile LDD doar in intervalul orar 22:00 - 08:00 

SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER permisiuni_LDD
BEFORE DDL ON DATABASE
BEGIN
    IF (USER IN ('SYS', 'SYSTEM')) THEN
        NULL;
    ELSIF (USER = 'MANAGER_LOGISTICA') THEN
        IF (TO_CHAR(SYSDATE, 'HH24:MI') >= '08:00' AND TO_CHAR(SYSDATE, 'HH24:MI') < '22:00') THEN
            RAISE_APPLICATION_ERROR(-20000, 'Nu se pot realiza modificari in timpul orelor de program');
        ELSE
            NULL;
        END IF;
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Nu aveti acces la comenzile asupra bazei de date');
    END IF;
END;   
/

--Se sterge tabelul CLIENT
EXECUTE IMMEDIATE 'DROP TABLE CLIENT CASCADE CONSTRAINTS';
