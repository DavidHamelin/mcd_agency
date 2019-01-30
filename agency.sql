/*------------------------------------------------------------
*        Script SQLSERVER 
------------------------------------------------------------*/
USE [agency]
GO

/*------------------------------------------------------------
-- Table: types
------------------------------------------------------------*/
CREATE TABLE types(
	id_types   INT IDENTITY (1,1) NOT NULL ,
	type       NVARCHAR (50) NOT NULL  ,
	CONSTRAINT types_PK PRIMARY KEY (id_types)
);


/*------------------------------------------------------------
-- Table: biens_immo
------------------------------------------------------------*/
CREATE TABLE biens_immo(
	id_biens_immo   INT IDENTITY (1,1) NOT NULL ,
	nom_bien        NVARCHAR (50) NOT NULL ,
	code_postal     INT  NOT NULL ,
	prix            INT  NOT NULL ,
	id_types        INT  NOT NULL  ,
	CONSTRAINT biens_immo_PK PRIMARY KEY (id_biens_immo)

	,CONSTRAINT biens_immo_types_FK FOREIGN KEY (id_types) REFERENCES types(id_types)
);


/*------------------------------------------------------------
-- Table: clients
------------------------------------------------------------*/
CREATE TABLE clients(
	id_clients       INT IDENTITY (1,1) NOT NULL ,
	nom              NVARCHAR (50) NOT NULL ,
	prenom           NVARCHAR (50) NOT NULL ,
	date_naissance   DATE NOT NULL ,
	mail             NVARCHAR (50) NOT NULL ,
	budget           INT  NOT NULL ,
	id_types         INT  NOT NULL  ,
	CONSTRAINT clients_PK PRIMARY KEY (id_clients)

	,CONSTRAINT clients_types_FK FOREIGN KEY (id_types) REFERENCES types(id_types)
);


/*------------------------------------------------------------
-- Table: creneaux_horaire
------------------------------------------------------------*/
CREATE TABLE creneaux_horaire(
	id_creneau   INT IDENTITY (1,1) NOT NULL ,
	creneau      TIME NOT NULL  ,
	CONSTRAINT creneaux_horaire_PK PRIMARY KEY (id_creneau)
);


/*------------------------------------------------------------
-- Table: rendez-vous
------------------------------------------------------------*/
CREATE TABLE rendez_vous(
	id_rendez_vous   INT IDENTITY (1,1) NOT NULL ,
	date_rdv         DATE NOT NULL ,
	id_clients       INT  NOT NULL ,
	id_creneau       INT  NOT NULL ,
	id_biens_immo    INT  NOT NULL  ,
	CONSTRAINT rendez_vous_PK PRIMARY KEY (id_rendez_vous)

	,CONSTRAINT rendez_vous_clients_FK FOREIGN KEY (id_clients) REFERENCES clients(id_clients)
	,CONSTRAINT rendez_vous_creneaux_horaire0_FK FOREIGN KEY (id_creneau) REFERENCES creneaux_horaire(id_creneau)
	,CONSTRAINT rendez_vous_biens_immo1_FK FOREIGN KEY (id_biens_immo) REFERENCES biens_immo(id_biens_immo)
);



