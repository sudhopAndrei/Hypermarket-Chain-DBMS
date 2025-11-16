--12

--a)sa se afiseze angajatii, statutul angajatului in magazin, tipul programului 
--si nivelul salarial pentru cei angajati inainte de 2021, ordonati dupa salariu

WITH program AS (SELECT id_program, tip_program
                FROM PROGRAM_ANGAJAT)
SELECT A.CNP_angajat, A.nume_complet, NVL2(A.CNP_manager, 'Angajat', 'Manager') as "statut", P.tip_program,
       DECODE (SIGN(salariu - 5000), -1, 'Nivel salarial 1', 'Nivel salarial 2') as "nivel salarial"
FROM ANGAJAT A
JOIN program P ON P.id_program = A.id_program
WHERE TO_CHAR(A.data_angajare, 'YYYY') < 2021
ORDER BY A.salariu;

--b)sa se afiseze codul, numele si pretul pentru fiecare produs care se regaseste in magazine din Italia

SELECT cod_produs, nume_produs, pret
FROM PRODUS 
WHERE cod_categorie IN
    (SELECT cod_categorie
     FROM CATEGORIE 
     JOIN ORGANIZARE USING(cod_categorie)
     JOIN MAGAZIN USING(id_magazin)
     JOIN ORAS USING(id_oras)
     JOIN TARA USING(cod_tara)
     WHERE UPPER(nume_tara) LIKE 'ITALIA');
     
--c)sa se afiseze codul si numele produselor care au cel putin o recenzie si au fost aprovizionate cel putin o data

SELECT P.cod_produs, P.nume_produs
FROM PRODUS P
WHERE EXISTS (SELECT * 
            FROM RECENZIE R 
            WHERE R.cod_produs = P.cod_produs)
AND EXISTS (SELECT * 
            FROM APROVIZIONARE A 
            WHERE A.cod_produs = P.cod_produs);

--d)sa se afiseze numele angajatilor care au procesat doar tranzactii prin PayPal

SELECT AN.nume_complet
FROM ANGAJAT AN
JOIN ACHIZITIE AC ON AC.CNP_angajat = AN.CNP_angajat
GROUP BY AN.nume_complet
HAVING COUNT(CASE WHEN UPPER(AC.metoda_plata) NOT LIKE 'PAYPAL' THEN 1 END) = 0;     

--e)sa se afiseze codul si numele produselor care au fost fabricate in ultimul an si care au fost aprovizionate cel putin o data

SELECT *
FROM (
    SELECT cod_produs, nume_produs
    FROM PRODUS
    WHERE ROUND(MONTHS_BETWEEN(SYSDATE, data_fabricare)) <= 12
    AND cod_produs IN (SELECT cod_produs
                       FROM APROVIZIONARE)
);
    

