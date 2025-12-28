--16

--sa se afiseze cnp ul si numele angajatilor care lucreaza in magazine din romania 

--neoptimizat
SELECT A.CNP_angajat, A.nume_complet
FROM ANGAJAT A
JOIN MAGAZIN M ON M.id_magazin = A.id_magazin
JOIN ORAS O ON O.id_oras = M.id_oras
JOIN TARA T ON T.cod_tara = O.cod_tara
WHERE UPPER(T.nume_tara) LIKE 'ROMANIA';

--optimizat
SELECT A.CNP_angajat, A.nume_complet
FROM (SELECT id_oras FROM ORAS WHERE cod_tara = 'RO') O
JOIN (SELECT id_magazin, id_oras FROM MAGAZIN) M ON M.id_oras = O.id_oras
JOIN (SELECT CNP_angajat, nume_complet, id_magazin FROM ANGAJAT) A ON A.id_magazin = M.id_magazin;
    

