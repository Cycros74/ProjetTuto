#Création de la base de donnees Exo1
DROP DATABASE IF EXISTS Exo1; 
CREATE DATABASE Exo1
;
USE Exo1
;

#Table: PERSONNE
CREATE TABLE Personne(
   per_num INT NOT NULL AUTO_INCREMENT,
   per_nom VARCHAR(50),
   per_prenom VARCHAR(50),
   per_adresse VARCHAR(50),
   per_ville VARCHAR(50),
   PRIMARY KEY(per_num)

)
;
#Table: GROUPE
CREATE TABLE Groupe(
   gro_num INT NOT NULL AUTO_INCREMENT,
   gro_libelle VARCHAR(50),
   PRIMARY KEY(gro_num)

)
;

#Table: APPARTIENT
CREATE TABLE Appartient(
   per_num INT,
   gro_num INT,
   PRIMARY KEY(per_num, gro_num),
   FOREIGN KEY (per_num) REFERENCES Personne (per_num),
   FOREIGN KEY (gro_num) REFERENCES Groupe (gro_num)
);
