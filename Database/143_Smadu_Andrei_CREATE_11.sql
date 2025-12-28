--10

/*--DOAR PENTRU PRIMA UTILIZARE

DROP TABLE TARA;
DROP TABLE ORAS;
DROP TABLE MAGAZIN;
DROP TABLE CATEGORIE;
DROP TABLE RAION;
DROP TABLE ORGANIZARE;
DROP TABLE FURNIZOR;
DROP TABLE PRODUS;
DROP TABLE APROVIZIONARE;
DROP TABLE PROMOTIE;
DROP TABLE CLIENT;
DROP TABLE RECENZIE;
DROP TABLE PROGRAM_ANGAJAT;
DROP TABLE ANGAJAT;
DROP TABLE MANAGER;
DROP TABLE ACHIZITIE;
DROP TABLE ACHIZITIE_ONLINE;
DROP TABLE ACHIZITIE_PRODUS;
    
DROP SEQUENCE secventa_oras;
DROP SEQUENCE secventa_magazin;
DROP SEQUENCE secventa_categorie;
DROP SEQUENCE secventa_raion;
DROP SEQUENCE secventa_produs;
DROP SEQUENCE secventa_tranzactie;
DROP SEQUENCE secventa_client;
DROP SEQUENCE secventa_program;
*/

CREATE SEQUENCE secventa_oras
START WITH 1
INCREMENT BY 1
MAXVALUE 99
NOCYCLE;

CREATE SEQUENCE secventa_magazin
START WITH 1
INCREMENT BY 7
MAXVALUE 99
NOCYCLE;

CREATE SEQUENCE secventa_categorie
START WITH 10000
INCREMENT BY 274
MAXVALUE 99999
NOCYCLE;

CREATE SEQUENCE secventa_raion 
START WITH 1
INCREMENT BY 1
MAXVALUE 100
NOCYCLE;

CREATE SEQUENCE secventa_produs
START WITH 10000
INCREMENT BY 987
MAXVALUE 65535
NOCYCLE;

CREATE SEQUENCE secventa_client
START WITH 100
INCREMENT BY 123
MAXVALUE 4095
NOCYCLE;

CREATE SEQUENCE secventa_program
START WITH 1
INCREMENT BY 1
MAXVALUE 10
NOCYCLE;

CREATE SEQUENCE secventa_tranzactie
START WITH 100000
INCREMENT BY 1234
MAXVALUE 1048575
NOCYCLE;

CREATE TABLE TARA (
    cod_tara VARCHAR2(2),
    nume_tara VARCHAR2(30),
    nr_mediu_clienti NUMBER,
    PRIMARY KEY (cod_tara)
);

CREATE TABLE ORAS (
    id_oras NUMBER(2,0),
    cod_tara VARCHAR2(2),
    nume_oras VARCHAR2(30),
    nr_mediu_clienti NUMBER,
    PRIMARY KEY (id_oras),
    FOREIGN KEY (cod_tara)
        REFERENCES TARA(cod_tara)
);

CREATE TABLE MAGAZIN (
    id_magazin NUMBER(2,0),
    id_oras NUMBER(2,0),
    nume_magazin VARCHAR2(50),
    adresa VARCHAR2(50) UNIQUE,
    PRIMARY KEY (id_magazin),
    FOREIGN KEY (id_oras)
        REFERENCES ORAS(id_oras)
);

CREATE TABLE CATEGORIE (
    cod_categorie NUMBER(5,0),
    nume_categorie VARCHAR2(30) UNIQUE,
    PRIMARY KEY (cod_categorie)
);

CREATE TABLE RAION (
    numar_raion NUMBER(2,0),
    cod_categorie NUMBER(5,0) REFERENCES CATEGORIE(cod_categorie) ON DELETE SET NULL,
    PRIMARY KEY(numar_raion, cod_categorie)
);

CREATE TABLE ORGANIZARE (
    id_magazin NUMBER(2,0) REFERENCES MAGAZIN(id_magazin) ON DELETE CASCADE,
    cod_categorie NUMBER(5,0) REFERENCES CATEGORIE(cod_categorie) ON DELETE CASCADE,
    PRIMARY KEY (id_magazin, cod_categorie)
);

CREATE TABLE FURNIZOR (
    EUID VARCHAR2(10),
    nume_furnizor VARCHAR2(30),
    adresa_sediu VARCHAR2(50) UNIQUE,
    numar_telefon NUMBER(15,0) UNIQUE,
    PRIMARY KEY (EUID)
);

CREATE TABLE PRODUS (
    cod_produs VARCHAR2(6),
    cod_categorie NUMBER(5,0),
    nume_produs VARCHAR2(30),
    pret NUMBER(6,2),
    data_fabricare DATE,
    data_expirare DATE,
    PRIMARY KEY (cod_produs),
    FOREIGN KEY (cod_categorie)
        REFERENCES CATEGORIE(cod_categorie)
);

CREATE TABLE APROVIZIONARE (
    id_magazin NUMBER(2,0) REFERENCES MAGAZIN(id_magazin) ON DELETE CASCADE,
    cod_produs VARCHAR2(6) REFERENCES PRODUS(cod_produs) ON DELETE CASCADE,
    EUID VARCHAR2(10) REFERENCES FURNIZOR(EUID) ON DELETE CASCADE,
    cantitate NUMBER,
    data_aprovizionare DATE,
    PRIMARY KEY (id_magazin, cod_produs, EUID)
);

CREATE TABLE PROMOTIE (
    cod_produs VARCHAR2(6) REFERENCES PRODUS(cod_produs) ON DELETE CASCADE,
    valoare_procentuala NUMBER(2,0),
    data_inceput DATE,
    data_sfarsit DATE,
    PRIMARY KEY (cod_produs),
    CHECK (data_inceput < data_sfarsit)
);

CREATE TABLE CLIENT (
    id_cont VARCHAR2(5),
    nr_achizitii_efectuate NUMBER,
    nume VARCHAR2(30),
    email VARCHAR2(30) CHECK (email LIKE '%@%.%') UNIQUE,
    PRIMARY KEY (id_cont)
);

CREATE TABLE RECENZIE (
    cod_produs VARCHAR2(6) REFERENCES PRODUS(cod_produs) ON DELETE CASCADE,
    id_cont VARCHAR2(5) REFERENCES CLIENT(id_cont) ON DELETE CASCADE,
    rating NUMBER(1,0) CHECK (rating <= 5),
    comentariu VARCHAR2(100),
    PRIMARY KEY (cod_produs, id_cont)
);

CREATE TABLE PROGRAM_ANGAJAT (
    id_program NUMBER(2,0),
    ora_incepere VARCHAR2(10),
    ora_finalizare VARCHAR2(10),
    tip_program VARCHAR2(30),
    PRIMARY KEY(id_program)
);

CREATE TABLE ANGAJAT (
    CNP_angajat NUMBER(13,0),
    id_magazin NUMBER(2,0),
    id_program NUMBER(2,0),
    nume_complet VARCHAR2(30),
    salariu NUMBER(5,0),
    data_angajare DATE,
    CNP_manager NUMBER(13,0),
    PRIMARY KEY (CNP_angajat),
    FOREIGN KEY (id_magazin)
        REFERENCES MAGAZIN(id_magazin) ON DELETE SET NULL,
    FOREIGN KEY (id_program)
        REFERENCES PROGRAM_ANGAJAT(id_program) ON DELETE SET NULL
);

CREATE TABLE MANAGER (
    CNP_angajat NUMBER(13,0) REFERENCES ANGAJAT(CNP_angajat) ON DELETE CASCADE,
    departament_condus VARCHAR2(30),
    PRIMARY KEY (CNP_angajat)
);

CREATE TABLE ACHIZITIE (
    cod_tranzactie VARCHAR2(7),
    id_cont VARCHAR2(5),
    CNP_angajat NUMBER(13,0),
    nr_produse NUMBER,
    metoda_plata VARCHAR2(30),
    status VARCHAR2(30),
    PRIMARY KEY (cod_tranzactie),
    FOREIGN KEY (id_cont) 
        REFERENCES CLIENT(id_cont) ON DELETE CASCADE,
    FOREIGN KEY (CNP_angajat)
        REFERENCES ANGAJAT(CNP_angajat) ON DELETE CASCADE
);

CREATE TABLE ACHIZITIE_ONLINE (
    cod_tranzactie VARCHAR2(7) REFERENCES ACHIZITIE(cod_tranzactie) ON DELETE CASCADE,
    nume_site VARCHAR2(30),
    PRIMARY KEY (cod_tranzactie)
);

CREATE TABLE ACHIZITIE_PRODUS (
    cod_produs VARCHAR2(6) REFERENCES PRODUS(cod_produs) ON DELETE CASCADE,
    cod_tranzactie VARCHAR2(7) REFERENCES ACHIZITIE(cod_tranzactie) ON DELETE CASCADE,
    PRIMARY KEY (cod_produs, cod_tranzactie)
);

COMMIT;