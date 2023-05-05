-- Active: 1681830226048@@127.0.0.1@3306@centro_sportivo
CREATE TABLE nome_corso(nome VARCHAR(30) NOT NULL PRIMARY KEY);

CREATE TABLE istruttore(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    cognome VARCHAR(30) NOT NULL,
    descrizione VARCHAR(30) NOT NULL
);

CREATE TABLE utente(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    cognome VARCHAR(30) NOT NULL,
    data_nascita DATE NOT NULL
);

CREATE TABLE corso(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_id VARCHAR(30) NOT NULL,
    istruttore_id INT NOT NULL,
    giorno_settimana VARCHAR(20) NOT NULL,
    orario_prefissato TIME NOT NULL,
    numero_lezioni INT UNSIGNED NOT NULL,
    costo_iscrizione FLOAT UNSIGNED NOT NULL,
    Foreign Key (nome_id) REFERENCES nome_corso(nome),
    Foreign Key (istruttori_id) REFERENCES istruttore(id)
);

CREATE TABLE prenotazione (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    corso_id INT NOT NULL,
    utente_id INT NOT NULL,
    data_prenotazione DATE NOT NULL,
    Foreign Key (corso_id) REFERENCES corso(id),
    Foreign Key (utente_id) REFERENCES utente(id)
);