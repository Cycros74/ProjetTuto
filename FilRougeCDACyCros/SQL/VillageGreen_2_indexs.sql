-- Active: 1677656421190@@127.0.0.1@3306@VILLAGEGREEN
#CYRIL CROS - FORMATION DEVELOPPEUR LOGICIEL AFPA AMIENS FEVRIER / OCTOBRE 2023

/*************************************************************
******************** FIL ROUGE *******************************
*************************************************************/
USE VILLAGEGREEN
;
/****** Création des Indexs ******/
#Index sur les noms Clients
create index ix_client on CLIE(cli_nom)
;
#Index sur les noms Fournisseurs
create index ix_fournis on FOUR(fou_nom)
;
#Index sur les libellés Produits
create index ix_produit on PROD(pro_lib)
;
#Index sur les villes Clients
create index ix_vilcli on CLIE(cli_vil)
;
#Index sur les villes Fournisseurs
create index ix_vilfou on FOUR(fou_vil)
;
#Index sur les villes Livraisons
create index ix_villiv on CLIE(liv_vil)
;