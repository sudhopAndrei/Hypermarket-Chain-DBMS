--11

--TARA (5)
INSERT ALL
    INTO TARA (cod_tara, nume_tara, nr_mediu_clienti) VALUES ('RO', 'Romania', 5000)
    INTO TARA (cod_tara, nume_tara, nr_mediu_clienti) VALUES ('DE', 'Germania', 7500)
    INTO TARA (cod_tara, nume_tara, nr_mediu_clienti) VALUES ('FR', 'Franta', 6800)
    INTO TARA (cod_tara, nume_tara, nr_mediu_clienti) VALUES ('IT', 'Italia', 6200)
    INTO TARA (cod_tara, nume_tara, nr_mediu_clienti) VALUES ('ES', 'Spania', 5800)
SELECT * FROM dual;


--ORAS (20)
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Bucuresti', 'RO', 2500);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Cluj-Napoca', 'RO', 1200);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Timisoara', 'RO', 1000);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Iasi', 'RO', 980);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Berlin', 'DE', 2800);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Munchen', 'DE', 1500);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Hamburg', 'DE', 1300);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Paris', 'FR', 3200);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Lyon', 'FR', 1100);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Marseille', 'FR', 950);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Nice', 'FR', 780);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Roma', 'IT', 2100);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Milano', 'IT', 1800);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Napoli', 'IT', 850);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Firenze', 'IT', 720);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Madrid', 'ES', 2400);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Barcelona', 'ES', 1900);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Valencia', 'ES', 820);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Sevilla', 'ES', 750);
INSERT INTO ORAS (id_oras, nume_oras, cod_tara, nr_mediu_clienti) VALUES (secventa_oras.NEXTVAL, 'Malaga', 'ES', 680);


--MAGAZIN (10)
INSERT INTO MAGAZIN (id_magazin, id_oras, nume_magazin, adresa) VALUES (secventa_magazin.NEXTVAL, 1, 'Magazin Lipscani', 'Strada Lipscani 22');
INSERT INTO MAGAZIN (id_magazin, id_oras, nume_magazin, adresa) VALUES (secventa_magazin.NEXTVAL, 2, 'Magazin Eroilor', 'Bulevardul Eroilor 15');
INSERT INTO MAGAZIN (id_magazin, id_oras, nume_magazin, adresa) VALUES (secventa_magazin.NEXTVAL, 5, 'Unirii Shopping Center', 'Bulevardul Unirii 10');
INSERT INTO MAGAZIN (id_magazin, id_oras, nume_magazin, adresa) VALUES (secventa_magazin.NEXTVAL, 8, 'Paris Plaza', 'Avenue de Champs-Elysees 45');
INSERT INTO MAGAZIN (id_magazin, id_oras, nume_magazin, adresa) VALUES (secventa_magazin.NEXTVAL, 12, 'Magazin Central', 'Bulevardul St. Pellegrino 30');
INSERT INTO MAGAZIN (id_magazin, id_oras, nume_magazin, adresa) VALUES (secventa_magazin.NEXTVAL, 16, 'Madrid Center', 'Gran Vía 58');
INSERT INTO MAGAZIN (id_magazin, id_oras, nume_magazin, adresa) VALUES (secventa_magazin.NEXTVAL, 3, 'City Plaza', 'Calea Bucuresti 23');
INSERT INTO MAGAZIN (id_magazin, id_oras, nume_magazin, adresa) VALUES (secventa_magazin.NEXTVAL, 6, 'Munich Shopping Center', 'Maximilianstrasse 7');
INSERT INTO MAGAZIN (id_magazin, id_oras, nume_magazin, adresa) VALUES (secventa_magazin.NEXTVAL, 9, 'Central Boutique', 'Rue de la Republique 19');
INSERT INTO MAGAZIN (id_magazin, id_oras, nume_magazin, adresa) VALUES (secventa_magazin.NEXTVAL, 17, 'Barcelona Central Plaza', 'La Rambla 42');


--CATEGORIE (10)
INSERT INTO CATEGORIE (cod_categorie, nume_categorie) VALUES (secventa_categorie.NEXTVAL, 'Electronice');
INSERT INTO CATEGORIE (cod_categorie, nume_categorie) VALUES (secventa_categorie.NEXTVAL, 'Imbracaminte');
INSERT INTO CATEGORIE (cod_categorie, nume_categorie) VALUES (secventa_categorie.NEXTVAL, 'Alimente');
INSERT INTO CATEGORIE (cod_categorie, nume_categorie) VALUES (secventa_categorie.NEXTVAL, 'Cosmetice');
INSERT INTO CATEGORIE (cod_categorie, nume_categorie) VALUES (secventa_categorie.NEXTVAL, 'Sport');
INSERT INTO CATEGORIE (cod_categorie, nume_categorie) VALUES (secventa_categorie.NEXTVAL, 'Casa si Gradina');
INSERT INTO CATEGORIE (cod_categorie, nume_categorie) VALUES (secventa_categorie.NEXTVAL, 'Carti');
INSERT INTO CATEGORIE (cod_categorie, nume_categorie) VALUES (secventa_categorie.NEXTVAL, 'Jucarii');
INSERT INTO CATEGORIE (cod_categorie, nume_categorie) VALUES (secventa_categorie.NEXTVAL, 'Auto');
INSERT INTO CATEGORIE (cod_categorie, nume_categorie) VALUES (secventa_categorie.NEXTVAL, 'Bricolaj');

--RAION (25)
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 10000);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 10000);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 10000);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 10274);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 10274);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 10548);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 10548);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 10548);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 10548);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 10822);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 10822);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 11096);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 11370);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 11370);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 11370);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 11370);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 11644);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 11644);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 11644);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 11918);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 11918);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 12192);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 12466);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 12466);
INSERT INTO RAION (numar_raion, cod_categorie) VALUES (secventa_raion.NEXTVAL, 12466);


--ORGANIZARE (25)
INSERT ALL
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (1, 10000)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (8, 10274)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (15, 10548)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (22, 11096)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (29, 11370)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (36, 11644)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (43, 11918)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (50, 12192)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (57, 12466)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (64, 10000)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (1, 10274)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (8, 10548)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (15, 11096)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (22, 11370)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (29, 11644)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (36, 11918)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (43, 12192)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (50, 12466)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (57, 10000)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (64, 10274)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (1, 10548)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (8, 11096)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (15, 11370)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (22, 11644)
    INTO ORGANIZARE (id_magazin, cod_categorie) VALUES (29, 11918)
SELECT * FROM dual;

--FURNIZOR (15)
INSERT ALL
    INTO FURNIZOR (EUID, nume_furnizor, adresa_sediu, numar_telefon) VALUES ('RO73925', 'ElectroTech SRL', 'Sibiu, Drumul Fermei 45', 40721234567)
    INTO FURNIZOR (EUID, nume_furnizor, adresa_sediu, numar_telefon) VALUES ('RO15347', 'FashionStyle SA', 'Galati, Str. Domneasca 12', 40734567890)
    INTO FURNIZOR (EUID, nume_furnizor, adresa_sediu, numar_telefon) VALUES ('RO28964', 'AgroFood SRL', 'Cluj-Napoca, Calea Turzii 8', 40756789012)
    INTO FURNIZOR (EUID, nume_furnizor, adresa_sediu, numar_telefon) VALUES ('RO42681', 'BeautyCosmetics SA', 'Timisoara, Bd. Republicii 23', 40767890123)
    INTO FURNIZOR (EUID, nume_furnizor, adresa_sediu, numar_telefon) VALUES ('RO59713', 'SportLife SRL', 'Iasi, Str. Garii 56', 40778901234)
    INTO FURNIZOR (EUID, nume_furnizor, adresa_sediu, numar_telefon) VALUES ('DE84296', 'BricoWarehouse GMBH', 'Hamburg, Zona Industriala 32', 49789012345)
    INTO FURNIZOR (EUID, nume_furnizor, adresa_sediu, numar_telefon) VALUES ('DE37102', 'BookWorld SA', 'Munchen', 49790123456)
    INTO FURNIZOR (EUID, nume_furnizor, adresa_sediu, numar_telefon) VALUES ('FR63851', 'ToysFrance SA', 'Paris', 33701234567)
    INTO FURNIZOR (EUID, nume_furnizor, adresa_sediu, numar_telefon) VALUES ('FR92467', 'AutoParts SRL', 'Lyon', 33712345678)
    INTO FURNIZOR (EUID, nume_furnizor, adresa_sediu, numar_telefon) VALUES ('IT18539', 'BricoItalia GMBH', 'Roma', 39723456789)
    INTO FURNIZOR (EUID, nume_furnizor, adresa_sediu, numar_telefon) VALUES ('ES24973', 'ElectroEspana SA', 'Madrid', 34745678901)
    INTO FURNIZOR (EUID, nume_furnizor, adresa_sediu, numar_telefon) VALUES ('ES50681', 'ModaBarcelona SA', 'Barcelona, La Rambla 22', 34756789012)
    INTO FURNIZOR (EUID, nume_furnizor, adresa_sediu, numar_telefon) VALUES ('IT74295', 'AgroItalia SRL', 'Milano', 39767890123)
    INTO FURNIZOR (EUID, nume_furnizor, adresa_sediu, numar_telefon) VALUES ('DE61834', 'SportDeutsch GMBH', 'Hamburg', 49778901234)
    INTO FURNIZOR (EUID, nume_furnizor, adresa_sediu, numar_telefon) VALUES ('FR45720', 'MonJardin SA', 'Marseille', 33789012345)
SELECT * FROM dual;


--PRODUS (30)
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 10000, 'Televizor Smart LED', 2500, TO_DATE('15-03-2024', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 10000, 'Laptop Gaming', 3899.99, TO_DATE('10-04-2024', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 10000, 'Smartphone', 1799.99, TO_DATE('05-05-2024', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 10274, 'Blugi', 149.99, TO_DATE('20-01-2024', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 10274, 'Tricou', 60, TO_DATE('15-02-2024', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 10274, 'Geaca', 300, TO_DATE('10-10-2023', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 10548, 'Lapte', 6.99, TO_DATE('12-05-2024', 'DD-MM-YYYY'), TO_DATE('26-05-2024', 'DD-MM-YYYY'));
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 10548, 'Paine', 4.50, TO_DATE('15-05-2024', 'DD-MM-YYYY'), TO_DATE('20-05-2024', 'DD-MM-YYYY'));
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 10548, 'Oua', 12.99, TO_DATE('10-05-2024', 'DD-MM-YYYY'), TO_DATE('01-06-2024', 'DD-MM-YYYY'));
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 10822, 'Crema fata', 89.99, TO_DATE('05-12-2023', 'DD-MM-YYYY'), TO_DATE('05-12-2025', 'DD-MM-YYYY'));
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 10822, 'Parfum', 245.50, TO_DATE('15-11-2023', 'DD-MM-YYYY'), TO_DATE('15-11-2026', 'DD-MM-YYYY'));
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 10822, 'Sampon', 24.99, TO_DATE('25-01-2024', 'DD-MM-YYYY'), TO_DATE('25-01-2026', 'DD-MM-YYYY'));
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 11096, 'Minge fotbal', 79.99, TO_DATE('20-09-2023', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 11096, 'Racheta tenis', 179.50, TO_DATE('15-08-2023', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 11096, 'Bicicleta', 900.50, TO_DATE('10-07-2023', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 11370, 'Set gradinarit', 125, TO_DATE('05-04-2023', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 11370, 'Scaun gradina', 160, TO_DATE('15-05-2023', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 11370, 'Masa exterior', 350.99, TO_DATE('20-05-2023', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 11644, 'Roman', 45.99, TO_DATE('10-02-2022', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 11644, 'Atlas', 79.99, TO_DATE('15-06-2021', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 11644, 'Carte de colorat', 19.99, TO_DATE('20-01-2023', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 11918, 'Papusa', 70.99, TO_DATE('10-03-2023', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 11918, 'Set Lego', 249.99, TO_DATE('05-04-2023', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 11918, 'Puzzle', 37, TO_DATE('15-02-2023', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 12192, 'Ulei motor', 50, TO_DATE('05-01-2023', 'DD-MM-YYYY'), TO_DATE('05-01-2026', 'DD-MM-YYYY'));
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 12192, 'Antigel', 29.99, TO_DATE('10-02-2023', 'DD-MM-YYYY'), TO_DATE('10-02-2028', 'DD-MM-YYYY'));
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 12192, 'Odorizant auto', 15.99, TO_DATE('15-03-2023', 'DD-MM-YYYY'), TO_DATE('15-03-2025', 'DD-MM-YYYY'));
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 12466, 'Bormasina', 299.99, TO_DATE('10-12-2022', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 12466, 'Set surubelnite', 89.99, TO_DATE('15-01-2023', 'DD-MM-YYYY'), NULL);
INSERT INTO PRODUS (cod_produs, cod_categorie, nume_produs, pret, data_fabricare, data_expirare) VALUES (TO_CHAR(secventa_produs.NEXTVAL,'XXXXX'), 12466, 'Ciocan', 50, TO_DATE('20-02-2023', 'DD-MM-YYYY'), NULL);

--APROVIZIONARE (20)
INSERT ALL
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (22, TO_CHAR(17896,'XXXXX'), 'RO73925', 50, TO_DATE('20-03-2024', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (29, TO_CHAR(10987,'XXXXX'), 'RO73925', 30, TO_DATE('15-04-2024', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (1, TO_CHAR(25792,'XXXXX'), 'ES24973', 40, TO_DATE('10-05-2024', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (1, TO_CHAR(31714,'XXXXX'), 'RO15347', 100, TO_DATE('25-01-2024', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (50, TO_CHAR(14935,'XXXXX'), 'RO15347', 120, TO_DATE('20-02-2024', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (57, TO_CHAR(30727,'XXXXX'), 'RO15347', 80, TO_DATE('15-10-2023', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (36, TO_CHAR(21844,'XXXXX'), 'RO28964', 200, TO_DATE('14-05-2024', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (8, TO_CHAR(23818,'XXXXX'), 'RO28964', 150, TO_DATE('16-05-2024', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (15, TO_CHAR(10000,'XXXXX'), 'RO28964', 120, TO_DATE('12-05-2024', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (43, TO_CHAR(19870,'XXXXX'), 'RO42681', 60, TO_DATE('10-12-2023', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (22, TO_CHAR(12961,'XXXXX'), 'RO42681', 45, TO_DATE('20-11-2023', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (43, TO_CHAR(37636,'XXXXX'), 'RO42681', 70, TO_DATE('30-01-2024', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (50, TO_CHAR(26779,'XXXXX'), 'RO59713', 25, TO_DATE('25-09-2023', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (1, TO_CHAR(28753,'XXXXX'), 'RO59713', 15, TO_DATE('20-08-2023', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (22, TO_CHAR(34675,'XXXXX'), 'RO59713', 10, TO_DATE('15-07-2023', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (36, TO_CHAR(16909,'XXXXX'), 'DE84296', 30, TO_DATE('10-04-2023', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (29, TO_CHAR(20857,'XXXXX'), 'DE84296', 25, TO_DATE('20-05-2023', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (43, TO_CHAR(33688,'XXXXX'), 'DE84296', 20, TO_DATE('25-05-2023', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (50, TO_CHAR(11974,'XXXXX'), 'DE37102', 40, TO_DATE('15-02-2022', 'DD-MM-YYYY'))
    INTO APROVIZIONARE (id_magazin, cod_produs, EUID, cantitate, data_aprovizionare) VALUES (57, TO_CHAR(24805,'XXXXX'), 'DE37102', 35, TO_DATE('20-06-2021', 'DD-MM-YYYY'))
SELECT * FROM dual;


--PROMOTIE (10)
INSERT ALL
    INTO PROMOTIE (cod_produs, valoare_procentuala, data_inceput, data_sfarsit) VALUES (TO_CHAR(18883,'XXXXX'), 15.0, TO_DATE('01-05-2025', 'DD-MM-YYYY'), TO_DATE('31-05-2025', 'DD-MM-YYYY'))
    INTO PROMOTIE (cod_produs, valoare_procentuala, data_inceput, data_sfarsit) VALUES (TO_CHAR(36649,'XXXXX'), 10.0, TO_DATE('15-05-2025', 'DD-MM-YYYY'), TO_DATE('15-06-2025', 'DD-MM-YYYY'))
    INTO PROMOTIE (cod_produs, valoare_procentuala, data_inceput, data_sfarsit) VALUES (TO_CHAR(13948,'XXXXX'), 20.0, TO_DATE('10-05-2025', 'DD-MM-YYYY'), TO_DATE('10-06-2025', 'DD-MM-YYYY'))
    INTO PROMOTIE (cod_produs, valoare_procentuala, data_inceput, data_sfarsit) VALUES (TO_CHAR(27766,'XXXXX'), 25.0, TO_DATE('05-04-2025', 'DD-MM-YYYY'), TO_DATE('25-05-2025', 'DD-MM-YYYY'))
    INTO PROMOTIE (cod_produs, valoare_procentuala, data_inceput, data_sfarsit) VALUES (TO_CHAR(15922,'XXXXX'), 5.0, TO_DATE('12-03-2025', 'DD-MM-YYYY'), TO_DATE('22-05-2025', 'DD-MM-YYYY'))
    INTO PROMOTIE (cod_produs, valoare_procentuala, data_inceput, data_sfarsit) VALUES (TO_CHAR(22831,'XXXXX'), 30.0, TO_DATE('01-05-2025', 'DD-MM-YYYY'), TO_DATE('30-05-2025', 'DD-MM-YYYY'))
    INTO PROMOTIE (cod_produs, valoare_procentuala, data_inceput, data_sfarsit) VALUES (TO_CHAR(29740,'XXXXX'), 15.0, TO_DATE('01-06-2025', 'DD-MM-YYYY'), TO_DATE('30-06-2025', 'DD-MM-YYYY'))
    INTO PROMOTIE (cod_produs, valoare_procentuala, data_inceput, data_sfarsit) VALUES (TO_CHAR(32701,'XXXXX'), 20.0, TO_DATE('15-06-2025', 'DD-MM-YYYY'), TO_DATE('15-07-2025', 'DD-MM-YYYY'))
    INTO PROMOTIE (cod_produs, valoare_procentuala, data_inceput, data_sfarsit) VALUES (TO_CHAR(35662,'XXXXX'), 10.0, TO_DATE('20-05-2025', 'DD-MM-YYYY'), TO_DATE('20-06-2025', 'DD-MM-YYYY'))
    INTO PROMOTIE (cod_produs, valoare_procentuala, data_inceput, data_sfarsit) VALUES (TO_CHAR(38623,'XXXXX'), 35.0, TO_DATE('01-07-2025', 'DD-MM-YYYY'), TO_DATE('31-07-2025', 'DD-MM-YYYY'))
SELECT * FROM dual;


--CLIENT (25)
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 15, 'Popescu Ion', 'ion.popescu@email.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 8, 'Ionescu Maria', 'maria.ionescu@email.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 12, 'Nastase Ilie', 'inastase@gmail.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 20, 'Popa Elena', 'elena.popa@gmail.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 5, 'Stanescu Mihai', 'mihai.s@gmail.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 10, 'Hans Flick', 'hans.flick@gmail.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 7, 'Ana Maria', 'anna.maria@email.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 14, 'Thomas Tuchel', 'thomas.tuchel@email.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 9, 'Becker Allison', 'allison.becker@email.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 16, 'Rashford Markus', 'markus.r@email.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 11, 'Jean Polnareff', 'jean.pol@email.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 6, 'Martin Sophie', 'sophie.martin@email.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 13, 'Leroy Sane', 'sane.leroy@email.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 8, 'Bernard Emilio', 'emi.bernard@yahoo.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 17, 'Petit Michael', 'mike.petit@hotmail.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 10, 'Rossi Francesco', 'fran.rossi@hotmail.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 7, 'Ferrari Enzo', 'enzo.ferrari@email.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 15, 'Giancarlo Esposito', 'gesposito@yahoo.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 9, 'Andra Sofia', 'sofiaandraa@yahoo.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 18, 'Enache Luca', 'lucaenache@email.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 11, 'Silva Miguel', 'miguel.silva@email.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 6, 'Rodriguez Ana', 'ana.rodriguez@email.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 14, 'Fernando Torres', 'fertorres@email.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 8, 'Lopez Jennifer', 'jlopez@email.com');
INSERT INTO CLIENT (id_cont, nr_achizitii_efectuate, nume, email) VALUES (TO_CHAR(secventa_client.NEXTVAL,'XXX'), 19, 'Martinez Emiliano', 'emimartinez@email.com');


--RECENZIE (15)
INSERT ALL
    INTO RECENZIE (cod_produs, id_cont, rating, comentariu) VALUES (TO_CHAR(23818,'XXXXX'), TO_CHAR(1207,'XXX'), 5, 'Excelent')
    INTO RECENZIE (cod_produs, id_cont, rating, comentariu) VALUES (TO_CHAR(14935,'XXXXX'), TO_CHAR(1945,'XXX'), 3, 'OK')
    INTO RECENZIE (cod_produs, id_cont, rating, comentariu) VALUES (TO_CHAR(26779,'XXXXX'), TO_CHAR(469,'XXX'), 5, 'Foarte bine')
    INTO RECENZIE (cod_produs, id_cont, rating, comentariu) VALUES (TO_CHAR(36649,'XXXXX'), TO_CHAR(2314,'XXX'), 1, 'Nu recomand')
    INTO RECENZIE (cod_produs, id_cont, rating, comentariu) VALUES (TO_CHAR(21844,'XXXXX'), TO_CHAR(838,'XXX'), 5, 'Calitativ')
    INTO RECENZIE (cod_produs, id_cont, rating, comentariu) VALUES (TO_CHAR(32701,'XXXXX'), TO_CHAR(2191,'XXX'), 2, 'Scump')
    INTO RECENZIE (cod_produs, id_cont, rating, comentariu) VALUES (TO_CHAR(17896,'XXXXX'), TO_CHAR(1576,'XXX'), 1, 'Dezamagitor')
    INTO RECENZIE (cod_produs, id_cont, rating, comentariu) VALUES (TO_CHAR(33688,'XXXXX'), TO_CHAR(1330,'XXX'), 4, 'Imi place mult')
    INTO RECENZIE (cod_produs, id_cont, rating, comentariu) VALUES (TO_CHAR(12961,'XXXXX'), TO_CHAR(715,'XXX'), 2, 'Nu recomand')
    INTO RECENZIE (cod_produs, id_cont, rating, comentariu) VALUES (TO_CHAR(29740,'XXXXX'), TO_CHAR(2068,'XXX'), 2, 'Rau')
    INTO RECENZIE (cod_produs, id_cont, rating, comentariu) VALUES (TO_CHAR(19870,'XXXXX'), TO_CHAR(1822,'XXX'), 3, 'Mediocru')
    INTO RECENZIE (cod_produs, id_cont, rating, comentariu) VALUES (TO_CHAR(31714,'XXXXX'), TO_CHAR(592,'XXX'), 4, 'Merita cumparat')
    INTO RECENZIE (cod_produs, id_cont, rating, comentariu) VALUES (TO_CHAR(16909,'XXXXX'), TO_CHAR(2437,'XXX'), 1, 'Execrabil')
    INTO RECENZIE (cod_produs, id_cont, rating, comentariu) VALUES (TO_CHAR(37636,'XXXXX'), TO_CHAR(346,'XXX'), 4, 'Foarte bine')
    INTO RECENZIE (cod_produs, id_cont, rating, comentariu) VALUES (TO_CHAR(25792,'XXXXX'), TO_CHAR(1084,'XXX'), 5, 'Superb')
SELECT * FROM dual;


--PROGRAM_ANGAJAT (5)
INSERT INTO PROGRAM_ANGAJAT (id_program, ora_incepere, ora_finalizare, tip_program) VALUES 
        (secventa_program.NEXTVAL, '08:00', '16:00', 'Full Time');
INSERT INTO PROGRAM_ANGAJAT (id_program, ora_incepere, ora_finalizare, tip_program) VALUES 
        (secventa_program.NEXTVAL, '14:00', '22:00', 'Full Time');
INSERT INTO PROGRAM_ANGAJAT (id_program, ora_incepere, ora_finalizare, tip_program) VALUES 
        (secventa_program.NEXTVAL, '10:00', '14:00', 'Part Time');
INSERT INTO PROGRAM_ANGAJAT (id_program, ora_incepere, ora_finalizare, tip_program) VALUES 
        (secventa_program.NEXTVAL, '16:00', '20:00', 'Part Time');
INSERT INTO PROGRAM_ANGAJAT (id_program, ora_incepere, ora_finalizare, tip_program) VALUES 
        (secventa_program.NEXTVAL, '08:00', '18:00', 'Full Time');


--ANGAJAT (20)
INSERT ALL
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1890302234567, 15, 2, 'Ionescu Elena', 3800, TO_DATE('10-02-2021', 'DD-MM-YYYY'), 1750215789012)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1750215789012, 43, 1, 'Roby Will', 6000, TO_DATE('20-05-2019', 'DD-MM-YYYY'), NULL)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1880723345678, 8, 4, 'Popa Andreea', 3900, TO_DATE('05-07-2021', 'DD-MM-YYYY'), 1760812456789)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1760812456789, 57, 5, 'Stanescu Cristian', 5800, TO_DATE('12-11-2019', 'DD-MM-YYYY'), NULL)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1870405567890, 22, 3, 'Mario Klaus', 4200, TO_DATE('30-09-2020', 'DD-MM-YYYY'), 1830617567890)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1740628901234, 64, 4, 'George Kross', 5700, TO_DATE('15-08-2018', 'DD-MM-YYYY'), NULL)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1860917678901, 36, 1, 'Marco Raul', 4100, TO_DATE('22-04-2021', 'DD-MM-YYYY'), 1830617567890)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1770330012345, 50, 2, 'Martin Leonard', 5900, TO_DATE('03-12-2018', 'DD-MM-YYYY'), 1740628901234)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1850528789012, 1, 3, 'Rocco Martin', 4300, TO_DATE('18-06-2020', 'DD-MM-YYYY'), 1780204123456)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1780204123456, 29, 5, 'Mitch Rodrygo', 5800, TO_DATE('25-01-2019', 'DD-MM-YYYY'), NULL)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1840809890123, 43, 1, 'Garcia Sanchez', 4000, TO_DATE('12-05-2021', 'DD-MM-YYYY'), 1740628901234)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1790519234567, 15, 5, 'Roberto Carlos', 5600, TO_DATE('08-07-2019', 'DD-MM-YYYY'), 1750215789012)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1830210901234, 57, 4, 'Kirk Hammett', 4200, TO_DATE('30-11-2020', 'DD-MM-YYYY'), 1760812456789)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1800726345678, 8, 2, 'Szabo Laszlo', 5500, TO_DATE('17-03-2019', 'DD-MM-YYYY'), 1740628901234)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1820601012345, 22, 3,'Lars Ulrich', 4100, TO_DATE('20-01-2021', 'DD-MM-YYYY'), 1750215789012)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1810915456789, 50, 4, 'James Hetfield', 5700, TO_DATE('05-04-2019', 'DD-MM-YYYY'), 1830617567890)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1891112123456, 36, 5, 'Axel Rose', 4000, TO_DATE('15-08-2021', 'DD-MM-YYYY'), 1830617567890)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1830617567890, 64, 1, 'Mike Pinkman', 5600, TO_DATE('22-09-2019', 'DD-MM-YYYY'), NULL)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1881023234567, 1, 2, 'Smith Will', 4300, TO_DATE('12-10-2020', 'DD-MM-YYYY'), 1760812456789)
    INTO ANGAJAT (CNP_angajat, id_magazin, id_program, nume_complet, salariu, data_angajare, CNP_manager) VALUES (1841129678901, 43, 2, 'Walter Blue', 5900, TO_DATE('28-06-2018', 'DD-MM-YYYY'), 1760812456789)
SELECT * FROM dual;


--MANAGER (5)
INSERT ALL
    INTO MANAGER (CNP_angajat, departament_condus) VALUES (1750215789012, 'Vanzari')
    INTO MANAGER (CNP_angajat, departament_condus) VALUES (1760812456789, 'Marketing')
    INTO MANAGER (CNP_angajat, departament_condus) VALUES (1740628901234, 'Logistica')
    INTO MANAGER (CNP_angajat, departament_condus) VALUES (1830617567890, 'Financiar')
    INTO MANAGER (CNP_angajat, departament_condus) VALUES (1780204123456, 'Resurse Umane')
SELECT * FROM dual;


--ACHIZITIE (25)
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(1207, 'XXX'), 1810915456789, 3, 'Card', 'Finalizata');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(346, 'XXX'), 1890302234567, 1, 'Numerar', 'Finalizata');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(2191, 'XXX'), 1750215789012, 5, 'Card', 'Finalizata');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(838, 'XXX'), 1880723345678, 2, 'Numerar', 'In procesare');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(1822, 'XXX'), 1760812456789, 4, 'Card', 'Finalizata');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(592, 'XXX'), 1870405567890, 6, 'PayPal', 'Finalizata');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(2683, 'XXX'), 1740628901234, 2, 'Card', 'In procesare');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(1453, 'XXX'), 1860917678901, 1, 'Numerar', 'Finalizata');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(2806, 'XXX'), 1770330012345, 3, 'Card', 'Finalizata');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(715, 'XXX'), 1850528789012, 5, 'PayPal', 'In procesare');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(2437, 'XXX'), 1780204123456, 2, 'Card', 'Finalizata');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(1084, 'XXX'), 1840809890123, 7, 'Numerar', 'Finalizata');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(2560, 'XXX'), 1790519234567, 4, 'Card', 'In procesare');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(1945, 'XXX'), 1830210901234, 1, 'Card', 'Finalizata');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(3052, 'XXX'), 1800726345678, 3, 'PayPal', 'Finalizata');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(961, 'XXX'), 1820601012345, 5, 'Card', 'In procesare');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(2314, 'XXX'), 1810915456789, 3, 'Numerar', 'Finalizata');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(1330, 'XXX'), 1891112123456, 2, 'Card', 'Finalizata');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(2068, 'XXX'), 1830617567890, 6, 'PayPal', 'In procesare');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(469, 'XXX'), 1881023234567, 4, 'Card', 'Finalizata');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(1699, 'XXX'), 1841129678901, 1, 'Numerar', 'Finalizata');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(2929, 'XXX'), 1810915456789, 3, 'Card', 'In procesare');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(100, 'XXX'), 1890302234567, 5, 'PayPal', 'Finalizata');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(1576, 'XXX'), 1750215789012, 2, 'Card', 'Finalizata');
INSERT INTO ACHIZITIE (cod_tranzactie, id_cont, CNP_angajat, nr_produse, metoda_plata, status) VALUES 
        (TO_CHAR(secventa_tranzactie.NEXTVAL, 'XXXXXX'), TO_CHAR(2314, 'XXX'), 1810915456789, 6, 'PayPal', 'In procesare');


--ACHIZITIE ONLINE (10)        
INSERT ALL
    INTO ACHIZITIE_ONLINE (cod_tranzactie, nume_site) VALUES 
        (TO_CHAR(120978, 'XXXXXX'), 'ROmag.ro')
    INTO ACHIZITIE_ONLINE (cod_tranzactie, nume_site) VALUES 
        (TO_CHAR(112340, 'XXXXXX'), 'EShop.com')
    INTO ACHIZITIE_ONLINE (cod_tranzactie, nume_site) VALUES 
        (TO_CHAR(113574, 'XXXXXX'), 'ROMag.ro')
    INTO ACHIZITIE_ONLINE (cod_tranzactie, nume_site) VALUES 
        (TO_CHAR(104936, 'XXXXXX'), 'ShopOnline.ro')
    INTO ACHIZITIE_ONLINE (cod_tranzactie, nume_site) VALUES 
        (TO_CHAR(118510, 'XXXXXX'), 'EShop.com')
    INTO ACHIZITIE_ONLINE (cod_tranzactie, nume_site) VALUES 
        (TO_CHAR(125914, 'XXXXXX'), 'ROMag.ro')
    INTO ACHIZITIE_ONLINE (cod_tranzactie, nume_site) VALUES 
        (TO_CHAR(109872, 'XXXXXX'), 'ShopOnline.ro')
    INTO ACHIZITIE_ONLINE (cod_tranzactie, nume_site) VALUES 
        (TO_CHAR(119744, 'XXXXXX'), 'EShop.com')
    INTO ACHIZITIE_ONLINE (cod_tranzactie, nume_site) VALUES 
        (TO_CHAR(102468, 'XXXXXX'), 'ROMag.ro')
    INTO ACHIZITIE_ONLINE (cod_tranzactie, nume_site) VALUES 
        (TO_CHAR(127148, 'XXXXXX'), 'ShopOnline.ro')
SELECT * FROM dual;


--ACHIZITIE_PRODUS (25)
INSERT ALL
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(14935, 'XXXXX'), TO_CHAR(109872, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(13948, 'XXXXX'), TO_CHAR(104936, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(26779, 'XXXXX'), TO_CHAR(118510, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(23818, 'XXXXX'), TO_CHAR(111106, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(17896, 'XXXXX'), TO_CHAR(122212, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(24805, 'XXXXX'), TO_CHAR(101234, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(11974, 'XXXXX'), TO_CHAR(125914, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(19870, 'XXXXX'), TO_CHAR(116042, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(16909, 'XXXXX'), TO_CHAR(103702, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(20857, 'XXXXX'), TO_CHAR(112340, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(15922, 'XXXXX'), TO_CHAR(107404, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(28753, 'XXXXX'), TO_CHAR(114808, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(10000, 'XXXXX'), TO_CHAR(124680, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(27766, 'XXXXX'), TO_CHAR(119744, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(21844, 'XXXXX'), TO_CHAR(127148, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(12961, 'XXXXX'), TO_CHAR(108638, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(10987, 'XXXXX'), TO_CHAR(117276, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(18883, 'XXXXX'), TO_CHAR(102468, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(25792, 'XXXXX'), TO_CHAR(123446, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(20857, 'XXXXX'), TO_CHAR(128382, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(15922, 'XXXXX'), TO_CHAR(100000, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(22831, 'XXXXX'), TO_CHAR(119744, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(13948, 'XXXXX'), TO_CHAR(106170, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(29740, 'XXXXX'), TO_CHAR(120978, 'XXXXXX'))
    INTO ACHIZITIE_PRODUS (cod_produs, cod_tranzactie) VALUES 
        (TO_CHAR(17896, 'XXXXX'), TO_CHAR(113574, 'XXXXXX'))
SELECT * FROM dual;


COMMIT;