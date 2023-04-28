create database papyrus
;

use papyrus
;

create schema stg02
;


/****** Objet: Table [PRODUIT] ******/

CREATE TABLE stg02.PRODUIT(
CODART varchar(4) primary key NOT NULL,
LIBART varchar(75) NOT NULL,
STKALE smallint NOT NULL,
STKPHY smallint NOT NULL,
QTEANN smallint NOT NULL,
UNIMES varchar(5) NOT NULL,
)
;
/****** Objet: Table [FOURNIS] ******/

CREATE TABLE stg02.FOURNIS(
NUMFOU int primary key NOT NULL,
NOMFOU varchar(50) NOT NULL,
RUEFOU varchar(50) NOT NULL,
POSFOU varchar(5) NOT NULL,
VILFOU varchar(50) NOT NULL,
CONFOU varchar(50) NOT NULL,
SATISF tinyint check (SATISF between 1 and 10) NULL,
)
;

/****** Objet: Table [VENTE] ******/

CREATE TABLE stg02.VENTE(
CODART varchar(4) references stg02.PRODUIT(CODART) NOT NULL,
NUMFOU int references stg02.FOURNIS(NUMFOU)  NOT NULL,
DELLIV smallint NOT NULL,
QTE1 smallint NOT NULL,
PRIX1 numeric(6, 2) NOT NULL,
QTE2 smallint NULL,
PRIX2 numeric(6, 2) NULL,
QTE3 smallint NULL,
PRIX3 numeric(6, 2) NULL,
PRIMARY KEY (CODART,NUMFOU)
)
;

Create table stg02.ENTCOM(
NUMCOM int identity primary key NOT NULL,
OBSCOM varchar (100) null,
DATCOM smalldatetime default getdate() NOT NULL,
NUMFOU int references stg02.FOURNIS(NUMFOU) null
)
;

create table stg02.LIGCOM (
NUMCOM int references stg02.ENTCOM(NUMCOM)  NOT NULL,
CODART varchar (4) references stg02.PRODUIT(CODART) NOT NULL,
NUMLIG tinyint not null,
QTECDE int,
PRIUNI smallmoney,
QTELIV int,
DERLIV smalldatetime
PRIMARY KEY (NUMCOM,NUMLIG)
)
;

create index index1
On stg02.ENTCOM (NUMFOU)
ALTER TABLE stg02.LIGCOM ALTER column PRIUNI money
