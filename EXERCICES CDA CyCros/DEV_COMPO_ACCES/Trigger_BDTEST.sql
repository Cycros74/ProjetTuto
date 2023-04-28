-- Active: 1677656421190@@127.0.0.1@3306@cp


USE cp;


DELIMITER $

 CREATE TRIGGER maj_total AFTER INSERT ON lignedecommande
    FOR EACH ROW
    BEGIN
        DECLARE id_c INT;
        DECLARE tot DOUBLE;
        SET id_c = NEW.id_commande; -- nous captons le numéro de commande concerné
        SET tot = (SELECT sum(prix*quantite) FROM lignedecommande WHERE id_commande=id_c); -- on recalcule le total
        UPDATE commande SET total=tot WHERE id=id_c; -- on stocke le total dans la table commande
    END;

END $

insert into lignedecommande 
(id_commande, id_produit, quantite, prix)
values(2, 2, 1, 2255);


DELIMITER ;
        
 


 DROP TRIGGER  maj_total3;