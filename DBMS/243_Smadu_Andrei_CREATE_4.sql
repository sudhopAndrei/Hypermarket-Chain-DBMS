/*
DROP TABLE MAGAZIN CASCADE CONSTRAINTS;
DROP TABLE FURNIZOR CASCADE CONSTRAINTS;
DROP TABLE PROMOTIE CASCADE CONSTRAINTS;
DROP TABLE PRODUS CASCADE CONSTRAINTS;
DROP TABLE APROVIZIONARE CASCADE CONSTRAINTS;
DROP TABLE CLIENT CASCADE CONSTRAINTS;
DROP TABLE ANGAJAT CASCADE CONSTRAINTS;
DROP TABLE ACHIZITIE CASCADE CONSTRAINTS;
DROP TABLE ACHIZITIE_PRODUS CASCADE CONSTRAINTS;
*/

CREATE TABLE MAGAZIN (
    id_magazin NUMBER,
    nume_magazin VARCHAR2(50),
    adresa VARCHAR2(50) UNIQUE,
    PRIMARY KEY (id_magazin)
);

CREATE TABLE FURNIZOR (
    EUID VARCHAR2(10),
    nume_furnizor VARCHAR2(30),
    adresa_sediu VARCHAR2(50) UNIQUE,
    numar_telefon NUMBER(15,0) UNIQUE,
    PRIMARY KEY (EUID)
);

CREATE TABLE PROMOTIE (
    cod_promotie NUMBER,
    procent_reducere NUMBER(3,0),
    data_inceput DATE,
    data_sfarsit DATE,
    PRIMARY KEY (cod_promotie),
    CHECK (data_inceput < data_sfarsit)
);

CREATE TABLE PRODUS (
    cod_produs NUMBER,
    nume_produs VARCHAR2(30),
    pret NUMBER(6,2),
    cod_promotie NUMBER,
    data_fabricare DATE,
    data_expirare DATE,
    PRIMARY KEY (cod_produs),
    FOREIGN KEY (cod_promotie)
        REFERENCES PROMOTIE(cod_promotie),
    CHECK (data_fabricare < data_expirare)
);

CREATE TABLE APROVIZIONARE (
    id_magazin NUMBER REFERENCES MAGAZIN(id_magazin) ON DELETE CASCADE,
    cod_produs NUMBER REFERENCES PRODUS(cod_produs) ON DELETE CASCADE,
    EUID VARCHAR2(10) REFERENCES FURNIZOR(EUID) ON DELETE CASCADE,
    data_aprovizionare DATE,
    cantitate NUMBER,
    PRIMARY KEY (id_magazin, cod_produs, EUID, data_aprovizionare)
);

CREATE TABLE CLIENT (
    id_client NUMBER,
    nume_complet VARCHAR2(30),
    email VARCHAR2(30) CHECK (email LIKE '%@%.%') UNIQUE,
    PRIMARY KEY (id_client)
);

CREATE TABLE ANGAJAT (
    CNP_angajat NUMBER(13,0),
    id_magazin NUMBER,
    nume_complet VARCHAR2(30),
    salariu NUMBER(5,0),
    data_angajare DATE,
    PRIMARY KEY (CNP_angajat),
    FOREIGN KEY (id_magazin)
        REFERENCES MAGAZIN(id_magazin) ON DELETE SET NULL
);

CREATE TABLE ACHIZITIE (
    cod_tranzactie NUMBER,
    id_client NUMBER,
    CNP_angajat NUMBER(13,0),
    metoda_plata VARCHAR2(30) CHECK (metoda_plata IN ('Card','Numerar','PayPal')),
    status VARCHAR2(30) CHECK (status IN ('In procesare', 'Finalizat')),
    PRIMARY KEY (cod_tranzactie),
    FOREIGN KEY (id_client) 
        REFERENCES CLIENT(id_client) ON DELETE SET NULL,
    FOREIGN KEY (CNP_angajat)
        REFERENCES ANGAJAT(CNP_angajat) ON DELETE SET NULL
);

CREATE TABLE ACHIZITIE_PRODUS (
    cod_produs NUMBER REFERENCES PRODUS(cod_produs) ON DELETE CASCADE,
    cod_tranzactie NUMBER REFERENCES ACHIZITIE(cod_tranzactie) ON DELETE CASCADE,
    cantitate NUMBER,
    pret NUMBER(6,2),
    PRIMARY KEY (cod_produs, cod_tranzactie)
);

COMMIT;
