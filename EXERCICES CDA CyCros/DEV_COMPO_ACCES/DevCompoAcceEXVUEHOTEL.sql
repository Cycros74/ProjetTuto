USE hotel
;


--1
CREATE VIEW HOTSTA
 as
SELECT * FROM hotel,station
WHERE hotel.hot_sta_id = station.sta_id
;
SELECT * FROM HOTSTA
;

--2
CREATE VIEW CHAHOT
as
SELECT * from chambre,hotel
WHERE cha_hot_id = hot_id
;
SELECT * FROM CHAHOT
;

--3
CREATE VIEW RESA2
as
SELECT cli_nom,reservation.* from client,reservation
WHERE res_cli_id = cli_id
;
SELECT * FROM RESA2
;

--4
CREATE VIEW CHAHOTSTA1
as 
SELECT cha_id,cha_numero,hot_nom,sta_nom from chambre,station,hotel
WHERE sta_id =hot_sta_id and hot_id = cha_hot_id
;
SELECT * FROM CHAHOTSTA1
;

--5
CREATE VIEW RESCLIHOT1
as
SELECT cli_nom,hot_nom,reservation.* FROM hotel,reservation,client,chambre
WHERE hot_id = cha_hot_id and cha_id =res_cha_id and res_cli_id = cli_id
;
SELECT * FROM RESCLIHOT1
;

