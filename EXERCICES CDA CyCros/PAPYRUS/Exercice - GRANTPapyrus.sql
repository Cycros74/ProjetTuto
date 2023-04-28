# Création de 3 utilisateurs

CREATE USER 'util1'@'%' IDENTIFIED BY '1Ksable';

GRANT ALL PRIVILEGES ON papyrus.* TO 'util1'@'%'
IDENTIFIED BY '1Ksable';

CREATE USER 'util2'@'%' IDENTIFIED BY '1Ksable';

GRANT SELECT ON papyrus.* TO 'util2'@'%'
IDENTIFIED BY '1Ksable';

CREATE USER 'util3'@'%' IDENTIFIED BY '1Ksable';

GRANT SHOW VIEW ON papyrus.fournis TO 'util3'@'%'
IDENTIFIED BY '1Ksable';


# Suppression utilisateur
DROP USER 'nom_utilisateur'@'adresse_ip';

