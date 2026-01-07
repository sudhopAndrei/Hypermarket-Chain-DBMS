--6
EXEC ieftinire_produse;

--7
EXEC lista_produse;

--8
END angajat_salariu_max;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE(angajat_salariu_max(5000));
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE(angajat_salariu_max(7000));
END;
/

--9
BEGIN
    statistica_client(17, 10);
END;
/

BEGIN
    statistica_client(100, 10);
END;
/

--10
--Se sterg aprovizionarile pentru magazinul cu id-ul 2
BEGIN
    DBMS_OUTPUT.PUT_LINE('User curent: ' || USER);
    DBMS_OUTPUT.PUT_LINE('Ora curenta: ' || TO_CHAR(SYSDATE, 'HH24:MI'));
    DELETE FROM APROVIZIONARE WHERE id_magazin = 2;
    DBMS_OUTPUT.PUT_LINE('Randuri sterse: ' || SQL%ROWCOUNT);
END;
/
  
--Se modifica o coloana nepermisa
BEGIN  
    DBMS_OUTPUT.PUT_LINE('User curent: ' || USER);  
    DBMS_OUTPUT.PUT_LINE('Ora curenta: ' || TO_CHAR(SYSDATE, 'HH24:MI'));  
    UPDATE APROVIZIONARE SET cod_produs = 10 WHERE id_magazin = 3;  
    DBMS_OUTPUT.PUT_LINE('Randuri modificate: ' || SQL%ROWCOUNT);  
END;  
/ 

--Se modifica o coloana permisa
BEGIN  
    DBMS_OUTPUT.PUT_LINE('User curent: ' || USER);  
    DBMS_OUTPUT.PUT_LINE('Ora curenta: ' || TO_CHAR(SYSDATE, 'HH24:MI'));  
    UPDATE APROVIZIONARE SET cantitate = 10 WHERE cod_produs = 16;  
    DBMS_OUTPUT.PUT_LINE('Randuri modificate: ' || SQL%ROWCOUNT);  
END;  
/ 

--Se insereaza o aprovizionare
BEGIN 
    DBMS_OUTPUT.PUT_LINE('User curent: ' || USER); 
    DBMS_OUTPUT.PUT_LINE('Ora curenta: ' || TO_CHAR(SYSDATE, 'HH24:MI')); 
    INSERT INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) 
        VALUES (3, 21, 'RO73925', 44, TO_DATE('11-02-2023', 'DD-MM-YYYY')); 
    DBMS_OUTPUT.PUT_LINE('Randuri adaugate: ' || SQL%ROWCOUNT); 
END; 
/ 

--11
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

--Achizitionare produs scump pentru angajat > 1 an
DECLARE
    v_pret PRODUS.pret%TYPE;
    v_data_angajare ANGAJAT.data_angajare%TYPE;
    v_status ACHIZITIE.status%TYPE;
BEGIN
    SELECT P.pret, AN.data_angajare, AC.status INTO v_pret, v_data_angajare, v_status
    FROM PRODUS P, ANGAJAT AN, ACHIZITIE AC
    WHERE P.cod_produs = 3 AND AN.CNP_angajat = 1850528789012 AND AC.cod_tranzactie = 1010;
    
    DBMS_OUTPUT.PUT_LINE('Inseram produsul cu pretul de ' || v_pret ||
    ' in achizitia procesata de un angajat cu vechimea de ' || (TRUNC(MONTHS_BETWEEN(SYSDATE, v_data_angajare) / 12, 1))
    || ' ani');
    DBMS_OUTPUT.PUT_LINE('Status initial achizitie 1010: ' || v_status);
    
    INSERT INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie, cantitate, pret) VALUES (3, 1010, 1, 1799.99);
    
    SELECT status INTO v_status
    FROM ACHIZITIE
    WHERE cod_tranzactie = 1010;
    
    DBMS_OUTPUT.PUT_LINE('Status actual achizitie 1010: ' || v_status);
END;
/

--12
EXECUTE IMMEDIATE 'DROP TABLE CLIENT CASCADE CONSTRAINTS';
