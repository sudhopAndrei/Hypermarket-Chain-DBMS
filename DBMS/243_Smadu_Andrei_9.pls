--9.) Sa se afiseze suma totala a produselor achizitionate care beneficiaza
-- de o reducere mai mare sau egala decat un procent primit ca parametru
-- de un client cu un id client primit ca parametru

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE statistica_client(
    p_id_client CLIENT.id_client%TYPE,
    p_procent_minim PROMOTIE.procent_reducere%TYPE) IS

    v_exista_client NUMBER;
    v_suma_totala NUMBER;
    
    NU_EXISTA_CLIENT EXCEPTION;
    PROCENT_INVALID EXCEPTION;
    
BEGIN
    SELECT COUNT(*) INTO v_exista_client
    FROM CLIENT
    WHERE id_client = p_id_client;
    
    IF v_exista_client = 0 THEN
        RAISE NU_EXISTA_CLIENT;
    END IF;
    
    IF (p_procent_minim < 1) OR (p_procent_minim > 100) THEN
        RAISE PROCENT_INVALID;
    END IF;
    
    SELECT NVL(SUM(AP.pret * AP.cantitate), 0) INTO v_suma_totala
    FROM ACHIZITIE_PRODUS AP
    JOIN PRODUS P ON P.cod_produs = AP.cod_produs
    JOIN PROMOTIE PR ON PR.cod_promotie = P.cod_promotie
    JOIN ACHIZITIE AC ON AC.cod_tranzactie = AP.cod_tranzactie
    JOIN CLIENT C ON AC.id_client = C.id_client
    WHERE C.id_client = p_id_client
    AND PR.procent_reducere >= p_procent_minim;
    
    DBMS_OUTPUT.PUT_LINE('Clientul cu id-ul ' || p_id_client || ' a cheltuit ' || v_suma_totala ||
        ' pe produse reduse cu peste ' || p_procent_minim);
    
EXCEPTION
    WHEN NU_EXISTA_CLIENT THEN
        RAISE_APPLICATION_ERROR(-20000, 'Nu exista clientul cu id-ul dat');
    WHEN PROCENT_INVALID THEN
        RAISE_APPLICATION_ERROR(-20001, 'Procent invalid');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'Alta eroare:' || SQLERRM);
END;
/

BEGIN
    statistica_client(13, 10);
END;
/

BEGIN
    statistica_client(100, 10);
END;
/

BEGIN
    statistica_client(13, 150);
END;
/
