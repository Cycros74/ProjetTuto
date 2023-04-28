-- Active: 1677656421190@@127.0.0.1@3306@hotel


USE hotel;

-- 1-----

DROP TRIGGER IF EXISTS modif_reservation;

DELIMITER |

CREATE TRIGGER modif_reservation AFTER UPDATE ON reservation
    FOR EACH ROW
    BEGIN
            SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Un problème est survenu. La modification de la reservation est interdite !';
        END |

 DELIMITER ;



 -- 2-----



DELIMITER $

CREATE TRIGGER insert_reservation BEFORE INSERT ON reservation
    FOR EACH ROW
    BEGIN
        DECLARE numeroHotel INT;
        DECLARE nbreReservation INT;

        SET numeroHotel = (
            SELECT DISTINCT cha_hot_id 
            FROM chambre 
            JOIN reservation ON cha_id = res_cha_id 
            WHERE res_cha_id = NEW.res_cha_id
        );

        SET nbreReservation = (
        SELECT COUNT (res_cha_id)
        FROM reservation
        JOIN chambre ON res_cha_id = cha_numero
        WHERE cha_hot_id = numeroHotel    
        );

        IF nbreReservation >= 10
        THEN
            SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Un problème est survenu. L ajout de  reservations est interdite !';
        END IF;
        
    END $
        


insert into reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix)
values (1, 1, '2023-02-02', '2022-02-02', '2022-02-02', 66);

select cha_hot_id, count(*)
from reservation r
join chambre c on res_cha_id=cha_id
group by cha_hot_id;

DELIMITER ;
        
 


 DROP TRIGGER  insert_reservation;


 -- 3-----



DELIMITER $

CREATE TRIGGER insert_reservation2 BEFORE INSERT ON reservation
    FOR EACH ROW
    BEGIN
        IF (select COUNT(res_date)
            from reservation
            join chambre on chambre.cha_id = reservation.res_cha_id
            join hotel on hotel.hot_id = chambre.cha_hot_id
            where hot_id = (
    SELECT DISTINCT cli_id 
            from reservation
            join chambre on chambre.cha_id = reservation.res_cli_id
            join client on hotel.hot_id = chambre.cha_hot_id
    WHERE reservation.res_cha_id = NEW.res_cha_id
    )) = 3

        THEN
            SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Un problème est survenu. L ajout de reservations est interdite pour ce client!';
        END IF;
        
    END $
        


insert into reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix)
values (1, 1, '2023-02-02', '2022-02-02', '2022-02-02', 66);

select cha_hot_id, count(*)
from reservation r
join chambre c on res_cha_id=cha_id
group by cha_hot_id;

DELIMITER ;
        
 


 DROP TRIGGER  insert_reservation;




 -- 4-----



DELIMITER $

CREATE TRIGGER insert_chambre BEFORE INSERT ON reservation
    FOR EACH ROW
    BEGIN
        IF (select COUNT(cha_capacite)
            from reservation
            join chambre on chambre.cha_id = reservation.res_cha_id
            join hotel on hotel.hot_id = chambre.cha_hot_id
            where hot_id = (
    SELECT DISTINCT hot_id 
            from reservation
            join chambre on chambre.cha_id = reservation.res_cha_id
            join hotel on hotel.hot_id = chambre.cha_hot_id
    WHERE reservation.res_cha_id = NEW.res_cha_id
    )) > 50

        THEN
            SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Un problème est survenu. L ajout de reservations est interdit pour cet hotel!';
        END IF;
        
    END $
        


insert into reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_cha_id)
values (1, 1, '2023-02-02', '2022-02-02', '2022-02-02', 66, 50);

select cha_hot_id, count(*)
from reservation r
join chambre c on res_cha_id=cha_id
group by cha_hot_id;

DELIMITER ;
        
 


 DROP TRIGGER  insert_reservation;


