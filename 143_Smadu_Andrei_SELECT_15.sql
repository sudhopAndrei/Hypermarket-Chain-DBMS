--15

--a) sa se afiseze pentru fiecare produs numele, numele categoriei din care face parte, rating-ul mediu, sau daca nu are recenzii 'fara rating', 
--de cate ori a fost aprovizionat in 2023 si in cate magazine se gaseste

SELECT P.nume_produs AS "nume",
       C.nume_categorie AS "categorie",
       CASE 
            WHEN AVG(R.rating) IS NOT NULL THEN TO_CHAR(AVG(R.rating))
            ELSE 'fara rating'
        END AS "rating",
       COUNT(A.cod_produs) AS "nr. aprovizionari",
       COUNT(DISTINCT(M.id_magazin)) AS "nr. magazine"
FROM PRODUS P
LEFT JOIN CATEGORIE C ON C.cod_categorie = P.cod_categorie
LEFT JOIN RECENZIE R ON R.cod_produs = p.cod_produs
LEFT JOIN APROVIZIONARE A ON A.cod_produs = P.cod_produs AND TO_CHAR(A.data_aprovizionare, 'YYYY') LIKE '2023'
LEFT JOIN ORGANIZARE ORG ON ORG.cod_categorie = C.cod_categorie
LEFT JOIN MAGAZIN M ON M.id_magazin = ORG.id_magazin
GROUP BY P.nume_produs, C.nume_categorie
ORDER BY P.nume_produs;

--b) sa se afiseze codul si numele tuturor produselor care fac parte din categoria "Bricolaj"

SELECT P.cod_produs, P.nume_produs
FROM PRODUS P
WHERE NOT EXISTS (
    SELECT C.cod_categorie
    FROM CATEGORIE C
    WHERE UPPER(C.nume_categorie) LIKE 'BRICOLAJ'
    AND NOT EXISTS (
        SELECT P2.cod_produs
        FROM PRODUS P2
        WHERE P2.cod_produs = P.cod_produs
        AND P2.cod_categorie = C.cod_categorie
    )
);

--c) sa se afiseze numele primilor 5 angajati, descrescator dupa salariu, care muncesc un program de tip full time

SELECT nume_complet, salariu
FROM (
    SELECT A.nume_complet, A.salariu
    FROM ANGAJAT A
    WHERE A.id_program IN (
        SELECT P.id_program
        FROM PROGRAM_ANGAJAT P
        WHERE UPPER(P.tip_program) LIKE 'FULL TIME')
    ORDER BY A.salariu DESC
)
WHERE ROWNUM <= 5;


