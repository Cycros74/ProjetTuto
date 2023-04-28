use hotel

--1
SELECT * from hotel

--2
SELECT cli_ville from client where cli_nom = 'White'

--3
SELECT * from station where sta_altitude < 1000

--4
SELECT * from chambre where cha_capacite > 1

--5
SELECT * from client where cli_ville <> 'Londre' 

--6
SELECT sta_nom,hot_nom, hot_categorie,hot_ville from station,hotel

--7
SELECT cha_numero,hot_nom from chambre,hotel where cha_hot_id = hot_id

--8
SELECT cli_id,cli_nom,res_cli_id,res_date,res_date_debut from client, reservation where cli_id = res_cli_id

--9
SELECT cha_numero, hot_nom, sta_nom from hotel, chambre, station where cha_hot_id=hot_id and hot_sta_id=sta_id

--10
SELECT cli_nom,cli_id,res_id,hot_nom from hotel,reservation,client,chambre where cli_id =res_id and res_cha_id = cha_id and cha_hot_id = hot_id

--11
SELECT sta_nom,COUNT (hot_id) as 'Nombre d hotel' from hotel,station where sta_id = hot_sta_id GROUP BY sta_id, sta_nom

--12
SELECT sta_nom,COUNT (cha_id) as 'Nombre de chambre' from chambre,hotel,station where cha_hot_id = hot_id and hot_sta_id =sta_id GROUP BY sta_nom

--13
SELECT sta_nom,COUNT (cha_id) as 'Nombre de chambre' from chambre,hotel,station where cha_hot_id = hot_id and hot_sta_id =sta_id and cha_capacite > 1 GROUP BY sta_nom

-- 14
SELECT hot_nom from hotel,client,reservation,chambre where cli_id = res_cli_id and res_cha_id = cha_id and cha_hot_id = hot_id  and  cli_nom = 'squire'