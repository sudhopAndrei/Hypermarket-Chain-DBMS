--6.) Sa se creeze o colectie care retine numele fiecarui produs care beneficiaza
-- de o promotie de cel putin 50%, impreuna cu noul pret si lista cu furnizori de la care provine.
-- Sa se adauge in aceasta colectie si cele mai putin vandute 5 produse si sa se ieftineasca cu 75%.
-- Sa se afiseze continutul acestei colectii. 

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE ieftinire_produse IS
    TYPE lista_furnizori_type IS TABLE OF VARCHAR2(30);

    TYPE rec_tabel_indexat IS RECORD (
        nume_produs PRODUS.nume_produs%TYPE,
        pret_redus NUMBER,
        lista_furnizori lista_furnizori_type);
        
    TYPE tabel_indexat_type IS TABLE OF rec_tabel_indexat INDEX BY PLS_INTEGER;
    
    TYPE vector_type IS VARRAY(5) OF PRODUS%ROWTYPE;
    
    t_produse_nevandute vector_type := vector_type();
    t_info_produse tabel_indexat_type;
    
    v_index PLS_INTEGER;
    
BEGIN
    SELECT * BULK COLLECT INTO t_produse_nevandute
    FROM (SELECT *
            FROM PRODUS p
            ORDER BY (SELECT COUNT(*)
                        FROM ACHIZITIE_PRODUS ap
                        WHERE p.cod_produs = ap.cod_produs) ASC
    )
    WHERE ROWNUM <= 5;
    
    FOR i IN (SELECT P.cod_produs, P.nume_produs, P.pret, PR.procent_reducere
                FROM PRODUS P
                JOIN PROMOTIE PR ON P.cod_promotie = PR.cod_promotie
                WHERE PR.procent_reducere >= 50) LOOP
                
        t_info_produse(i.cod_produs).nume_produs := i.nume_produs;
        t_info_produse(i.cod_produs).pret_redus := ROUND(i.pret * (1 - i.procent_reducere / 100), 2);
        
        t_info_produse(i.cod_produs).lista_furnizori := lista_furnizori_type();
        
        SELECT F.nume_furnizor BULK COLLECT
        INTO t_info_produse(i.cod_produs).lista_furnizori
        FROM FURNIZOR F
        JOIN APROVIZIONARE AP ON AP.EUID = F.EUID
        WHERE AP.cod_produs = i.cod_produs;
        
    END LOOP;
    
    FOR i IN 1..t_produse_nevandute.COUNT LOOP
        
        t_info_produse(t_produse_nevandute(i).cod_produs).nume_produs := t_produse_nevandute(i).nume_produs;
        t_info_produse(t_produse_nevandute(i).cod_produs).pret_redus := ROUND(t_produse_nevandute(i).pret * 0.25, 2);
        
        t_info_produse(t_produse_nevandute(i).cod_produs).lista_furnizori := lista_furnizori_type();
        
        SELECT F.nume_furnizor BULK COLLECT
        INTO t_info_produse(t_produse_nevandute(i).cod_produs).lista_furnizori
        FROM FURNIZOR F
        JOIN APROVIZIONARE AP ON AP.EUID = F.EUID
        WHERE AP.cod_produs = t_produse_nevandute(i).cod_produs;
        
    END LOOP;
    
    v_index := t_info_produse.FIRST;
    
    WHILE v_index IS NOT NULL LOOP
        
        DBMS_OUTPUT.PUT_LINE('Produs: ' || t_info_produse(v_index).nume_produs);
        DBMS_OUTPUT.PUT_LINE(' *preț cu reducere: ' || t_info_produse(v_index).pret_redus);
        DBMS_OUTPUT.PUT_LINE(' *lista furnizorilor: ');
        
        IF t_info_produse(v_index).lista_furnizori.COUNT > 0 THEN
            FOR i IN 1..t_info_produse(v_index).lista_furnizori.COUNT LOOP
                DBMS_OUTPUT.PUT_LINE(' -> '|| t_info_produse(v_index).lista_furnizori(i));
            END LOOP;
        ELSE 
            DBMS_OUTPUT.PUT_LINE(' Nu s-au înregistrat furnizori');
        END IF;
        
        DBMS_OUTPUT.PUT_LINE(' ');
        
        v_index := t_info_produse.NEXT(v_index);
    END LOOP;
    
END;
/
 
EXEC ieftinire_produse;
