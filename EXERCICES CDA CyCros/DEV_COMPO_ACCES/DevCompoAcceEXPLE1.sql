Use exemple1

-- N°1
Select * from employe

-- N°2
Select * from dept

-- N°3Use exemple1

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
SELECT employe.nom,employe.salaire, patron.nom, patron.salaire
FROM employe 
JOIN employe as patron on employe.nosup=patron.noemp
WHERE employe.salaire>patron.salaire


-- N°6
SELECT employe.nom,employe.salaire,amartakaldire.nom,amartakaldire.salaire
FROM employe
JOIN employe as amartakaldire on employe.nom = 'amartakaldire'
WHERE employe.salaire<amartakaldire.salaire

-- N°7
SELECT employe.nom,employe.titre,amartakaldire.nom,amartakaldire.titre
FROM employe
JOIN employe as amartakaldire on employe.nom = 'amartakaldire'
WHERE employe.titre = amartakaldire.titre

--N°8
SELECT employe.nom, employe.titre, dep.nom, dep.titre
FROM employe
JOIN employe as dep on employe.titre = dep.titre
WHERE employe.nodeUse exemple1

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
SELECT employe.nom,employe.salaire, patron.nom, patron.salaire
FROM employe 
JOIN employe as patron on employe.nosup=patron.noemp
WHERE employe.salaire>patron.salaire


-- N°6
SELECT employe.nom,employe.salaire,amartakaldire.nom,amartakaldire.salaire
FROM employe
JOIN employe as amartakaldire on employe.nom = 'amartakaldire'
WHERE employe.salaire<amartakaldire.salaire

-- N°7
SELECT employe.nom,employe.titre,amartakaldire.nom,amartakaldire.titre
FROM employe
JOIN employe as amartakaldire on employe.nom = 'amartakaldire'
WHERE employe.titre = amartakaldire.titre

--N°8
SELECT employe.nom, employe.titre, dep.nom, dep.titre
FROM employe
JOIN employe as dep on employe.titre = dep.titre
WHERE employe.nodep = 32
AND dep.nodep = 31

-- N°9
SELECT employe.nom,employe.titre,employe.salaire,fairent.nom,fairent.titre,fairent.salaire
FROM employe
JOIN employe as fairent on employe.nom = 'fairent'
WHERE employe.titre = fairent.titre
AND employe.salaire = fairent.salaire

-- N°10
SELECT employe.nom,employe.titre,amartakaldire.nom,amartakaldire.titre
FROM employe
JOIN employe as amartakaldire on employe.nom = 'amartakaldire'
WHERE employe.titre = amartakaldire.titre

-- N°11
SELECT employe.nom,employe.salaire,employe.nodep,dep.nom,dep.salaire,dep.nodep
FROM employe
JOIN employe as dep on employe.nodep = 31
AND dep.salaire > employe.salaire
ORDER BY dep.nodep ,dep.salaire

-- N°12
SELECT employe.nom,employe.salaire,employe.nodep from employe where employe.salaire > ANY(
	SELECT employe.salaire from employe	where employe.nodep = 31)
	

-- N°13
select nom, titre from employe where nodep = 31 and titre in (
	select titre from employe where nodep = 32)

-- N°14
select nom, titre from employe where nodep = 31 and titre not in (
	select titre from employe where nodep = 32)

--N°15
select nom, titre, salaire from employe where titre = ALL (
select titre from employe where nom = 'Fairent')
and salaire = ALL (
select salaire from employe where nom = 'Fairent')

--N°16









-- N°1
SELECT COUNT (noemp) as 'Nombre d employer',titre from employe GROUP BY titre 

-- N°2
SELECT noregion, AVG (salaire) as 'Moyenne des salaires' from employe,dept where nodep = nodept GROUP BY noregion


-- N°3
SELECT nodep, count(nodep) as 'Nombre de salarié' from employe GROUP BY nodep HAVING count (nodep) >= 3

-- N°4
SELECT SUBSTRING (nom,1,1),COUNT (*) from employe group by SUBSTRING (nom,1,1) HAVING count(*) >=3 

-- N°5
SELECT MAX(Salaire) as 'Salaire maximum', MIN(Salaire) 'Salaire minimum', Max (salaire)- Min(salaire) as ecart from employe

-- N°6
SELECT COUNT (DISTINCT titre) as 'Nombre de titre diffenrent' from employe

-- N°7
SELECT COUNT (titre) as 'Nombre d employer',titre from employe GROUP BY titre 

-- N°8
SELECT dept.nom, COUNT(noemp) as 'Nombre d employer ' from dept,employe where nodep = nodept GROUP BY dept.nom

-- N°9
SELECT  titre, AVG (salaire) as 'moyenne salaire' from employe GROUP BY titre  HAVING AVG(salaire) >(
SELECT AVG(salaire) from employe where titre = 'representant' )

-- N°10
SELECT COUNT(salaire), COUNT(tauxcom) FROM employe 


p = 32
AND dep.nodep = 31

-- N°9
SELECT employe.nom,employe.titre,employe.salaire,fairent.nom,fairent.titre,fairent.salaire
FROM employe
JOIN employe as fairent on employe.nom = 'fairent'
WHERE employe.titre = fairent.titre
AND employe.salaire = fairent.salaire

-- N°10
SELECT employe.nom,employe.titre,amartakaldire.nom,amartakaldire.titre
FROM employe
JOIN employe as amartakaldire on employe.nom = 'amartakaldire'
WHERE employe.titre = amartakaldire.titre

-- N°11
SELECT employe.nom,employe.salaire,employe.nodep,dep.nom,dep.salaire,dep.nodep
FROM employe
JOIN employe as dep on employe.nodep = 31
AND dep.salaire > employe.salaire
ORDER BY dep.nodep ,dep.salaire

-- N°12
SELECT employe.nom,employe.salaire,employe.nodep from employe where employe.salaire > ANY(
	SELECT employe.salaire from employe	where employe.nodep = 31)
	

-- N°13
select nom, titre from employe where nodep = 31 and titre in (
	select titre from employe where nodep = 32)

-- N°14
select nom, titre from employe where nodep = 31 and titre not in (
	select titre from employe where nodep = 32)

--N°15
select nom, titre, salaire from employe where titre = ALL (
select titre from employe where nom = 'Fairent')
and salaire = ALL (
select salaire from employe where nom = 'Fairent')

--N°16









-- N°1
SELECT COUNT (noemp) as 'Nombre d employer',titre from employe GROUP BY titre 

-- N°2
SELECT noregion, AVG (salaire) as 'Moyenne des salaires' from employe,dept where nodep = nodept GROUP BY noregion


-- N°3
SELECT nodep, count(nodep) as 'Nombre de salarié' from employe GROUP BY nodep HAVING count (nodep) >= 3

-- N°4
SELECT SUBSTRING (nom,1,1),COUNT (*) from employe group by SUBSTRING (nom,1,1) HAVING count(*) >=3 

-- N°5
SELECT MAX(Salaire) as 'Salaire maximum', MIN(Salaire) 'Salaire minimum', Max (salaire)- Min(salaire) as ecart from employe

-- N°6
SELECT COUNT (DISTINCT titre) as 'Nombre de titre diffenrent' from employe

-- N°7
SELECT COUNT (titre) as 'Nombre d employer',titre from employe GROUP BY titre 

-- N°8
SELECT dept.nom, COUNT(noemp) as 'Nombre d employer ' from dept,employe where nodep = nodept GROUP BY dept.nom

-- N°9
SELECT  titre, AVG (salaire) as 'moyenne salaire' from employe GROUP BY titre  HAVING AVG(salaire) >(
SELECT AVG(salaire) from employe where titre = 'representant' )

-- N°10
SELECT COUNT(salaire), COUNT(tauxcom) FROM employe 



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
SELECT employe.nom,employe.salaire, patron.nom, patron.salaire
FROM employe 
JOIN employe as patron on employe.nosup=patron.noemp
WHERE employe.salaire>patron.salaire


-- N°6
SELECT employe.nom,employe.salaire,amartakaldire.nom,amartakaldire.salaire
FROM employe
JOIN employe as amartakaldire on employe.nom = 'amartakaldire'
WHERE employe.salaire<amartakaldire.salaire

-- N°7
SELECT employe.nom,employe.titre,amartakaldire.nom,amartakaldire.titre
FROM employe
JOIN employe as amartakaldire on employe.nom = 'amartakaldire'
WHERE employe.titre = amartakaldire.titre

--N°8
SELECT employe.nom, employe.titre, dep.nom, dep.titre
FROM employe
JOIN employe as dep on employe.titre = dep.titre
WHERE employe.nodep = 32
AND dep.nodep = 31

-- N°9
SELECT employe.nom,employe.titre,employe.salaire,fairent.nom,fairent.titre,fairent.salaire
FROM employe
JOIN employe as fairent on employe.nom = 'fairent'
WHERE employe.titre = fairent.titre
AND employe.salaire = fairent.salaire

-- N°10
SELECT employe.nom,employe.titre,amartakaldire.nom,amartakaldire.titre
FROM employe
JOIN employe as amartakaldire on employe.nom = 'amartakaldire'
WHERE employe.titre = amartakaldire.titre

-- N°11
SELECT employe.nom,employe.salaire,employe.nodep,dep.nom,dep.salaire,dep.nodep
FROM employe
JOIN employe as dep on employe.nodep = 31
AND dep.salaire > employe.salaire
ORDER BY dep.nodep ,dep.salaire

-- N°12
SELECT employe.nom,employe.salaire,employe.nodep from employe where employe.salaire > ANY(
	SELECT employe.salaire from employe	where employe.nodep = 31)
	

-- N°13
select nom, titre from employe where nodep = 31 and titre in (
	select titre from employe where nodep = 32)

-- N°14
select nom, titre from employe where nodep = 31 and titre not in (
	select titre from employe where nodep = 32)

--N°15
select nom, titre, salaire from employe where titre = ALL (
select titre from employe where nom = 'Fairent')
and salaire = ALL (
select salaire from employe where nom = 'Fairent')

--N°16









-- N°1
SELECT COUNT (noemp) as 'Nombre d employer',titre from employe GROUP BY titre 

-- N°2
SELECT noregion, AVG (salaire) as 'Moyenne des salaires' from employe,dept where nodep = nodept GROUP BY noregion


-- N°3
SELECT nodep, count(nodep) as 'Nombre de salarié' from employe GROUP BY nodep HAVING count (nodep) >= 3

-- N°4
SELECT SUBSTRING (nom,1,1),COUNT (*) from employe group by SUBSTRING (nom,1,1) HAVING count(*) >=3 

-- N°5
SELECT MAX(Salaire) as 'Salaire maximum', MIN(Salaire) 'Salaire minimum', Max (salaire)- Min(salaire) as ecart from employe

-- N°6
SELECT COUNT (DISTINCT titre) as 'Nombre de titre diffenrent' from employe

-- N°7
SELECT COUNT (titre) as 'Nombre d employer',titre from employe GROUP BY titre 

-- N°8
SELECT dept.nom, COUNT(noemp) as 'Nombre d employer ' from dept,employe where nodep = nodept GROUP BY dept.nom

-- N°9
SELECT  titre, AVG (salaire) as 'moyenne salaire' from employe GROUP BY titre  HAVING AVG(salaire) >(
SELECT AVG(salaire) from employe where titre = 'representant' )

-- N°10
SELECT COUNT(salaire), COUNT(tauxcom) FROM employe 


