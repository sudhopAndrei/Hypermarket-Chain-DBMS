--EX 9    
SET SERVEROUTPUT ON;

DECLARE
    TYPE subordonati_tema IS VARRAY(10) OF NUMBER(13);
    
    TYPE manager_tema IS RECORD (
        CNP_angajat MANAGER.cnp_angajat%TYPE,
        nume VARCHAR2(30),
        departament_condus MANAGER.departament_condus%TYPE,
        lista subordonati_tema);
        
    TYPE manageri_tabel IS TABLE OF manager_tema;
    
    v_manageri manageri_tabel;
    v_subordonati subordonati_tema;
    
BEGIN
    v_manageri := manageri_tabel();
    
    FOR rec_manager_curent IN (SELECT M.CNP_angajat, M.departament_condus, A.nume_complet
                               FROM MANAGER M
                               JOIN ANGAJAT A ON A.CNP_ANGAJAT = M.CNP_ANGAJAT) LOOP
                                                      
        v_subordonati := subordonati_tema();
    
        SELECT A.CNP_angajat BULK COLLECT INTO v_subordonati
        FROM ANGAJAT A
        WHERE A.CNP_manager = rec_manager_curent.CNP_angajat;
        
        v_manageri.EXTEND;
        
        v_manageri(v_manageri.LAST) := manager_tema (
            rec_manager_curent.CNP_angajat,
            rec_manager_curent.nume_complet,
            rec_manager_curent.departament_condus,
            v_subordonati);
            
    END LOOP;
    
    FOR i IN v_manageri.FIRST..v_manageri.LAST LOOP
        DBMS_OUTPUT.PUT_LINE(v_manageri(i).nume || ':');
        FOR j IN v_manageri(i).lista.FIRST..v_manageri(i).lista.LAST LOOP
            DBMS_OUTPUT.PUT_LINE(v_manageri(i).lista(j) || ' ');
        END LOOP;
        DBMS_OUTPUT.PUT_LINE(''); 
    END LOOP;
                                                                                
END;        

--EX10
DECLARE
    TYPE 

        
        
    
    
    
    
    