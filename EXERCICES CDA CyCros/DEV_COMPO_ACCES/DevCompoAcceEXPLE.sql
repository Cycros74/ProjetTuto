use master
;
create database exemple1
;
use exemple1
;

CREATE TABLE dept (
	nodept nvarchar(50) NOT NULL PRIMARY KEY,
	nom nvarchar(50) NOT NULL,
	noregion nvarchar(50) NOT NULL,
)
;
CREATE TABLE employe(
	noemp int NOT NULL PRIMARY KEY,
	nom nvarchar(50) NOT NULL,
	prenom nvarchar(50) NOT NULL,
	dateemb datetime NOT NULL,
	nosup nvarchar(50) NULL,
	titre nvarchar(50) NOT NULL,
	nodep nvarchar(50) NOT NULL REFERENCES dept(nodept),
	salaire decimal(18, 0) NOT NULL,
	tauxcom decimal(18, 0) NULL,
)
;



INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES (N'10', N'finance', N'1')
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES (N'20', N'atelier', N'2')
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES (N'30', N'atelier', N'3')
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES (N'31', N'vente', N'1')
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES (N'32', N'vente', N'2')
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES (N'33', N'vente', N'3')
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES (N'34', N'vente', N'4')
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES (N'35', N'vente', N'5')
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES (N'41', N'distribution', N'1')
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES (N'42', N'distribution', N'2')
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES (N'43', N'distribution', N'3')
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES (N'44', N'distribution', N'4')
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES (N'45', N'distribution', N'5')
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES (N'50', N'administration', N'1')
;

INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (1, N'patamob', N'adhémar', '20000326', NULL, N'président', N'50', 50000, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (2, N'zeublouse', N'agathe', '20000415', N'1', N'dir.distrib', N'41', 35000, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (3, N'kuzbidon', N'alex', '20000505', N'1', N'dir.vente', N'31', 34000, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (4, N'locale', N'anasthasie', '20000525', N'1', N'dir.finance', N'10', 36000, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (5, N'teutmaronne', N'armand', '20000614', N'1', N'dir.administratif', N'50', 36000, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (6, N'zoudanlkou', N'debbie', '20000704', N'2', N'chef entrepot', N'41', 25000, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (7, N'rivenbusse', N'elsa', '20000724', N'2', N'chef entrepot', N'42', 24000, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (8, N'ardelpic', N'helmut', '20000813', N'2', N'chef entrepot', N'43', 23000, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (9, N'peursconla', N'humphrey', '20000902', N'2', N'chef entrepot', N'44', 22000, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (10, N'vrante', N'helena', '20000922', N'2', N'chef entrepot', N'45', 21000, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (11, N'melusine', N'enfaillite', '20001012', N'3', N'representant', N'31', 25000, 10)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (12, N'eurktumeme', N'odile', '20001101', N'3', N'representant', N'32', 26000, 12)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (13, N'hotdeugou', N'olaf', '20001121', N'3', N'representant', N'33', 27000, 10)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (14, N'odlavieille', N'pacome', '20001211', N'3', N'representant', N'34', 25000, 15)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (15, N'amartakaldire', N'quentin', '20001221', N'3', N'representant', N'35', 23000, 17)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (16, N'traibien', N'samira', '20001231', N'6', N'secretaire', N'41', 15000, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (17, N'fonfec', N'sophie', '20010110', N'6', N'secretaire', N'41', 14000, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (18, N'fairent', N'teddy', '20010120', N'7', N'secretaire', N'42', 13000, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (19, N'blaireur', N'terry', '20010209', N'7', N'secretaire', N'42', 13000, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (20, N'ajerre', N'tex', '20010209', N'8', N'secretaire', N'43', 13000, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (21, N'chmonfisse', N'thierry', '20010219', N'8', N'secretaire', N'43', 12000, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (22, N'phototetedemort', N'thomas', '20010219', N'9', N'secretaire', N'44', 22500, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (23, N'kaecoute', N'xavier', '20010301', N'9', N'secretaire', N'34', 11500, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (24, N'adrouille-toutltan', N'yves', '20010311', N'10', N'secretaire', N'45', 11000, NULL)
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (25, N'anchier', N'yvon', '20010321', N'10', N'secretaire', N'45', 10000, NULL)
;


-- N°1
Select * from employe

-- N°2
Select * from dept

-- N°3
SELECT nom AS Employe FROM employe

-- N°4
SELECT nom AS "Nom de l'employé" FROM employe

-- N°5
SELECT titre from employe

-- N°6
SELECT DISTINCT titre FROM employe

-- N°7
SELECT noemp,nom,nodep FROM employe 
	WHERE titre = 'Secretaire'

-- N°8
SELECT nom,nodep FROM employe
	WHERE nodep > 40

-- N°9
SELECT nom,prenom FROM employe
	WHERE nom < prenom

-- N°10
SELECT nom,salaire,nodep FROM employe
	WHERE titre = 'representant' and nodep = 35 and salaire > 20000 

-- N°11
SELECT nom,titre,salaire FROM employe
	WHERE titre = 'representant' or titre = 'président'

-- N°12
SELECT nom, titre, nodep, salaire FROM employe
	WHERE  titre = 'representant' or titre ='secretaire' and nodep = 34

-- N°13
SELECT nom,salaire FROM employe
	WHERE salaire between 20000 and 30000

-- N°14
SELECT nom,titre,nodep FROM employe
	WHERE titre IN ('representant','secretaire')

-- N°15
SELECT nom FROM employe
	WHERE nom like 'h%'

-- N°16
SELECT nom FROM employe
	WHERE nom like '%n'

-- N°17
SELECT nom FROM employe
	WHERE nom like '__u%'

-- N°18
SELECT salaire,nom FROM employe
	WHERE nodep = 41 ORDER BY salaire ASC

-- N°19
SELECT salaire,nom FROM employe
	WHERE nodep = 41 ORDER BY salaire DESC

-- N°20
SELECT titre,salaire,nom FROM employe
	 ORDER BY titre ASC,Salaire DESC

-- N°21
SELECT tauxcom,salaire,nom FROM employe
	ORDER BY tauxcom ASC

-- N°22
SELECT tauxcom,salaire,nom,titre FROM employe
	WHERE tauxcom is null 

-- N°23
SELECT tauxcom,salaire,nom FROM employe
	WHERE tauxcom is not null

-- N°24
SELECT tauxcom,salaire,nom FROM employe
	WHERE tauxcom < 15

-- N°25
SELECT tauxcom,salaire,nom FROM employe
	WHERE tauxcom > 15

-- N°26
SELECT tauxcom,salaire,nom,(salaire * tauxcom /100) as commission FROM employe
	WHERE tauxcom is not null
	
-- N°27
SELECT tauxcom,salaire,nom,(salaire * tauxcom /100) as commission FROM employe
	WHERE tauxcom is not null ORDER BY tauxcom ASC

-- N°28
SELECT nom +' '+ prenom as nomprenom FROM employe

-- N°29
SELECT SUBSTRING (nom,1,5) from employe
	
-- N°30
SELECT nom, charindex('r', nom) AS position from employe
    WHERE nom like '__%r%'

-- N°31
SELECT UPPER (nom) NOM, LOWER (nom) nom from employe
	WHERE nom = 'Vrante'

-- N°32
SELECT nom, LEN (nom) nombrecaractere from employe


-- JOINTURE

-- N°1
SELECT prenom,noregion
FROM employe,dept 
WHERE nodep = nodept		

-- N°2
SELECT nodep,employe.nom as 'nom employe',dept.nom as 'nom departement'
From employe,dept
WHERE nodep = nodept
ORDER BY nodep

-- N°3
SELECT employe.nom,dept.nom
FROM employe,dept
WHERE employe.nom = 'Amartakaldire'

-- N°4
SELECT employe.nom
FROM employe INNER JOIN dept
ON nodep = nodept
WHERE dept.nom = 'distribution'

-- Réeécrire les requetes 1 et 2

SELECT prenom,noregion
FROM employe INNER JOIN dept
ON nodep = nodept
		
SELECT nodep,employe.nom as 'nom employe',dept.nom as 'nom departement'
From employe INNER JOIN dept
ON nodep = nodept
ORDER BY nodep

--  N°5
SELECT nom,salaire,titre
FROM employe
WHERE titre '
