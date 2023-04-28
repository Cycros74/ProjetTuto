#Création de la base de donnees Exo2
DROP DATABASE IF EXISTS Exo2; 
CREATE DATABASE Exo2
;
USE Exo2
;

#Table: STATION
CREATE TABLE Station(
   sta_num INT NOT NULL AUTO_INCREMENT,
   sta_nom VARCHAR(50),
   PRIMARY KEY(sta_num) 

)
;
#Table: HOTEL
CREATE TABLE Hotel(
hot_num INT NOT NULL AUTO_INCREMENT,
hot_capacite INT NOT NULL,
hot_categorie VARCHAR (50),
hot_nom VARCHAR(50),
hot_adresse VARCHAR(50),
sta_num INT,
PRIMARY KEY (hot_num),
FOREIGN KEY (sta_num) REFERENCES Station (sta_num)

)
;

#Table: CHAMBRE
CREATE TABLE Chambre(
    cham_num INT NOT NULL AUTO_INCREMENT,
    cham_capacite INT NOT NULL,
    cham_confort VARCHAR (50),
    cham_exposition VARCHAR (50),
    cham_type VARCHAR (50),
    hot_num INT,
    PRIMARY KEY(cham_num),
    FOREIGN KEY (hot_num) REFERENCES Hotel (hot_num)
)
;

#Table: CLIENT
CREATE TABLE Client(
    cli_num INT NOT NULL AUTO_INCREMENT,
    cli_adresse VARCHAR (50),
    cli_nom VARCHAR (50),
    cli_prenom VARCHAR (50),
    PRIMARY KEY (cli_num)

)
;

#Table: RESERVATION
CREATE TABLE Reservation(
res_debut DATE,
res_fin DATE,
res_date VARCHAR(50),
res_arrhes VARCHAR(50),
res_prix DECIMAL (10,2),
cham_num INT,
cli_num INT,
FOREIGN KEY (cham_num) REFERENCES Chambre (cham_num),
FOREIGN KEY (cli_num) REFERENCES Client (cli_num)
)
;