--13

--a)sa se micsoreze cu 25% pretul produselor care au fost fabricate in 2024 si care au fost aprovizionate macar o data

UPDATE PRODUS P
SET pret = pret * 0.75
WHERE TO_CHAR(data_fabricare, 'YYYY') = '2024'
AND (SELECT COUNT(P2.cod_produs)
     FROM PRODUS P2
     JOIN APROVIZIONARE AP ON AP.cod_produs = P.cod_produs
     WHERE P.cod_produs = P2.cod_produs
     GROUP BY (P.cod_produs)) >= 1;

--b)sa se mareasca cu 35% salariul angajatilor din departamentul Marketing care au procesat cel putin o achizitie numerar

UPDATE ANGAJAT
SET salariu = salariu * 1.35
WHERE CNP_manager = 
    (SELECT M.CNP_angajat
     FROM MANAGER M
     WHERE UPPER(M.departament_condus) LIKE 'MARKETING')
AND CNP_angajat IN
    (SELECT AN.CNP_angajat
     FROM ACHIZITIE AC 
     JOIN ANGAJAT AN ON AN.CNP_angajat = AC.CNP_angajat
     WHERE UPPER(AC.metoda_plata) LIKE 'NUMERAR'
     GROUP BY AN.CNP_angajat
     HAVING COUNT(AC.cod_tranzactie) >= 1);
     
--c)sa se dubleze cantitatea de produse din aprovizionarile din 2023 pentru magazinul Paris Plaza

UPDATE APROVIZIONARE
SET cantitate = cantitate * 2
WHERE id_magazin = 
    (SELECT M.id_magazin
     FROM MAGAZIN M
     WHERE UPPER(M.nume_magazin) LIKE 'PARIS PLAZA')
AND TO_CHAR(data_aprovizionare, 'YYYY') = '2023';

--d)sa se stearga clientii care au lasat recenzii sub 3 stele

DELETE FROM CLIENT
WHERE id_cont IN 
    (SELECT R.id_cont
     FROM RECENZIE R
     WHERE R.rating < 3);
     
--e)sa se stearga produsele care au fost la reducere in mai 2025 si nu au nicio recenzie

DELETE FROM PRODUS
WHERE cod_produs NOT IN 
    (SELECT R.cod_produs
     FROM RECENZIE R)
AND cod_produs IN
    (SELECT PR.cod_produs
     FROM PROMOTIE PR
     WHERE PR.data_inceput BETWEEN '01-MAY-2025' AND '31-MAY-2025'
     OR PR.data_sfarsit BETWEEN '01-MAY-2025' AND '31-MAY-2025');
     
--f)sa se stearga angajatii din departamentul Financiar care castiga sub 5000 de lei

DELETE FROM ANGAJAT
WHERE CNP_angajat IN
    (SELECT AN.CNP_angajat
     FROM ANGAJAT AN
     WHERE AN.CNP_manager = 
        (SELECT M.CNP_angajat
         FROM MANAGER M
         WHERE UPPPER(M.departament_condus) LIKE 'FINANCIAR'))
AND salariu < 5000;

ROLLBACK;