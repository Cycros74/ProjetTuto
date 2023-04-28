#Création de la base de donnees GesCom
DROP DATABASE IF EXISTS GesCom; 
CREATE DATABASE GesCom
;
USE GesCom
;

#Table: FOURNISSEUR
CREATE TABLE Fournisseur(
    sup_id INT NOT NULL AUTO_INCREMENT,
    sup_name VARCHAR(50),
    sup_city VARCHAR(50),
    sup_address VARCHAR(150),
    sup_mail VARCHAR(75),
    sup_phone INT (10),
   PRIMARY KEY(sup_id) 

)
;
#Table: CLIENT
CREATE TABLE Client(
cus_id INT NOT NULL AUTO_INCREMENT,
cus_lastname VARCHAR(50),
cus_firstname VARCHAR (150),
cus_address VARCHAR(50),
cus_zipcode VARCHAR(50),
cus_city VARCHAR(50),
cus_mail VARCHAR(75),
cus_phone INT(10),
PRIMARY KEY (cus_id)
)
;

#Table: COMMANDE
CREATE TABLE Commande(
    ord_id INT NOT NULL AUTO_INCREMENT,
    ord_order_date DATE,
    ord_ship_date DATE,
    ord_bill_date DATE,
    ord_reception_date DATE,
    ord_status VARCHAR(25) ,
    cus_id INT,
    PRIMARY KEY(ord_id),
    FOREIGN KEY (cus_id) REFERENCES Client (cus_id)
)
;

#Table: CATEGORIE
CREATE TABLE Categorie(
   cat_id INT AUTO_INCREMENT,
   cat_parent_id INT,
   cat_name VARCHAR(200) ,
   PRIMARY KEY(cat_id),
   FOREIGN KEY (cat_parent_id) REFERENCES Categorie (cat_id)

)
;

#Table: PRODUIT
CREATE TABLE Produit(
   pro_id INT AUTO_INCREMENT,
   pro_ref VARCHAR(10) ,
   pro_name VARCHAR(200) ,
   pro_desc TEXT,
   pro_price DECIMAL(6,2)  ,
   pro_stock SMALLINT,
   pro_color VARCHAR(30) ,
   pro_picture VARCHAR(40) ,
   pro_add_date DATE,
   pro_update_date DATETIME,
   pro_publish TINYINT,
   cat_id INT,
   Sup_id INT,
   PRIMARY KEY(pro_id),
   FOREIGN KEY (cat_id) REFERENCES Categorie (cat_id),
   FOREIGN KEY (sup_id) REFERENCES Fournisseur (sup_id)
)
;
#Table: DETAILS
CREATE TABLE Details(
   det_id INT AUTO_INCREMENT,
   det_price DECIMAL(6,2)  ,
   det_quantity INT,
   pro_id INT,
   ord_id INT,
   PRIMARY KEY(det_id),
   FOREIGN KEY (pro_id) REFERENCES Produit (pro_id),
   FOREIGN KEY (ord_id) REFERENCES Commande (ord_id)
)
;
CREATE UNIQUE INDEX pro_ref
ON Produit (pro_ref ASC);