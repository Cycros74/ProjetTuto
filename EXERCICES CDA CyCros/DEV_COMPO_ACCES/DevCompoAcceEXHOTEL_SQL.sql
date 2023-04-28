create database hotel 
go
use hotel
go


create table station (
	sta_id	int not null identity primary key,
	sta_nom varchar(50) not null,
	sta_altitude	int	
)


create table hotel (
	hot_id 	int not null identity primary key,
	hot_sta_id int not null references station(sta_id),
	hot_nom varchar(50) not null,
	hot_categorie int not null,
	hot_adresse varchar(50) not null,
	hot_ville varchar(50) not null
)



create table chambre (
	cha_id int not null identity primary key,
	cha_hot_id int not null references hotel(hot_id),
	cha_numero int not null,
	cha_capacite int not null,
	cha_type int not null
)


create table client (
	cli_id int not null identity primary key,
	cli_nom varchar(50),
	cli_prenom varchar(50),
	cli_adresse varchar(50),
	cli_ville varchar(50)
)


create table reservation (
	res_id int not null identity primary key,
	res_cha_id int not null references chambre(cha_id),
	res_cli_id int not null references client(cli_id),
	res_date datetime not null,
	res_date_debut datetime not null,
	res_date_fin datetime not null,
	res_prix money not null,
	res_arrhes money
)


insert into station (sta_nom, sta_altitude) values ('La Montagne', 2500)
insert into station (sta_nom, sta_altitude) values ('Le Sud', 200)
insert into station (sta_nom, sta_altitude) values ('La Plage', 10)


insert into hotel (hot_sta_id, hot_nom, hot_categorie, hot_adresse, hot_ville) values (1, 'Le magnifique', 3, 'rue du bas', 'Bled')
insert into hotel (hot_sta_id, hot_nom, hot_categorie, hot_adresse, hot_ville) values (1, 'Hotel du haut', 1, 'rue du haut', 'Village')
insert into hotel (hot_sta_id, hot_nom, hot_categorie, hot_adresse, hot_ville) values (2, 'Le Narval', 3, 'place de la liberation', 'ICI')
insert into hotel (hot_sta_id, hot_nom, hot_categorie, hot_adresse, hot_ville) values (2, 'Les pissenlis', 4, 'place du 14 juillet', 'Bled')
insert into hotel (hot_sta_id, hot_nom, hot_categorie, hot_adresse, hot_ville) values (2, 'RR Hotel', 5, 'place du bas', 'Bled')
insert into hotel (hot_sta_id, hot_nom, hot_categorie, hot_adresse, hot_ville) values (2, 'La Brique', 2, 'place du haut', 'Bled')
insert into hotel (hot_sta_id, hot_nom, hot_categorie, hot_adresse, hot_ville) values (3, 'le beau rivage', 3, 'place du centre', 'Bled')

insert into chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) values (101, 1, 1, 1)
insert into chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) values (102, 1, 2, 1)
insert into chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) values (103, 1, 1, 1)
insert into chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) values (104, 2, 2, 1)
insert into chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) values (105, 2, 2, 1)
insert into chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) values (106, 2, 1, 1)
insert into chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) values (107, 3, 3, 1)
insert into chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) values (108, 3, 1, 1)
insert into chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) values (109, 3, 2, 1)
insert into chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) values (235, 4, 1, 1)
insert into chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) values (157, 4, 1, 1)
insert into chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) values (874, 7, 1, 1)
insert into chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) values (125, 7, 5, 1)


insert into client (cli_nom, cli_prenom, cli_adresse, cli_ville) values ('Doe', 'John', '', 'LA')
insert into client (cli_nom, cli_prenom, cli_adresse, cli_ville) values ('Homme', 'Josh', '', 'Palm Desert')
insert into client (cli_nom, cli_prenom, cli_adresse, cli_ville) values ('Paul', 'Weller', '', 'Londre')
insert into client (cli_nom, cli_prenom, cli_adresse, cli_ville) values ('White', 'Jack', '', 'Detroit')
insert into client (cli_nom, cli_prenom, cli_adresse, cli_ville) values ('Claypool', 'Les', '', 'San Francisco')
insert into client (cli_nom, cli_prenom, cli_adresse, cli_ville) values ('Squire', 'Chris', '', 'Brit City')
insert into client (cli_nom, cli_prenom, cli_adresse, cli_ville) values ('Wood', 'Ronnie', '', 'Londre')
insert into client (cli_nom, cli_prenom, cli_adresse, cli_ville) values ('Thunders', 'Johnny', '', 'New York')


insert into reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes)
values (1, 1, '01/05/2009', '01/07/2009', '31/07/2009', 2400, 800)
insert into reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes)
values (2, 2, '01/06/2009', '01/07/2009', '31/07/2009', 3400, 100)
insert into reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes)
values (1, 3, '01/07/2009', '01/07/2009', '31/07/2009', 400, 50)
insert into reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes)
values (2, 4, '01/08/2009', '01/07/2009', '31/07/2009', 7200, 1800)
insert into reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes)
values (3, 5, '01/09/2009', '01/07/2009', '31/07/2009', 1400, 450)
insert into reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes)
values (4, 6, '10/05/2009', '01/07/2009', '31/07/2009', 2400, 780)
insert into reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes)
values (4, 6, '26/06/2009', '01/07/2009', '31/07/2009', 500, 80)
insert into reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes)
values (4, 1, '09/07/2009', '01/07/2009', '31/07/2009', 40, 0)

