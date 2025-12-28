--14

--sa se creeze o vizualizare care contine numele si codul fiecarui produs, promotia de care a dispus in 2024 si de cate ori a fost aprovizionat 

CREATE OR REPLACE VIEW DATE_PRODUS AS
SELECT P.cod_produs AS "cod",
       P.nume_produs AS "nume",
       NVL((SELECT PROM.valoare_procentuala
                 FROM PROMOTIE PROM
                 WHERE PROM.cod_produs = P.cod_produs), 0) AS "procent reducere",
       COUNT(A.cod_produs) AS "nr. aprovizionari"
FROM PRODUS P
LEFT JOIN APROVIZIONARE A ON A.cod_produs = P.cod_produs AND TO_CHAR(A.data_aprovizionare, 'YYYY') LIKE '2024'
GROUP BY P.cod_produs, P.nume_produs;

--operatie permisa
SELECT "cod", "nume"
FROM DATE_PRODUS
WHERE "cod" IN (
    SELECT cod_produs
    FROM PROMOTIE);
    
--operatie nepermisa
INSERT INTO Date_Produs("cod", "nume", "procent reducere", "nr. aprovizionari") VALUES  ('A4C4', 'Lopata', 10, 2);


