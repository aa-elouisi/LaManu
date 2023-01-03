-- JMERISE / Création de la table: speciality

CREATE TABLE speciality(
	IDspeciality   INT IDENTITY (1,1) NOT NULL ,
	name           VARCHAR (50) NOT NULL  ,
	CONSTRAINT speciality_PK PRIMARY KEY (IDspeciality)
);


-- JMERISE / Création de la table: medecins

CREATE TABLE medecins(
	IDmedecins     INT IDENTITY (1,1) NOT NULL ,
	lastname       VARCHAR (50) NOT NULL ,
	firstname      VARCHAR (50) NOT NULL ,
	mail           VARCHAR (50) NOT NULL ,
	IDspeciality   INT  NOT NULL  ,
	CONSTRAINT medecins_PK PRIMARY KEY (IDmedecins)

	,CONSTRAINT medecins_speciality_FK FOREIGN KEY (IDspeciality) REFERENCES speciality(IDspeciality)
);


-- JMERISE / Création de la table: patients

CREATE TABLE patients(
	IDpatients   INT IDENTITY (1,1) NOT NULL ,
	lastname     VARCHAR (50) NOT NULL ,
	firstname    VARCHAR (50) NOT NULL ,
	birthdate    DATETIME NOT NULL ,
	IDmedecins   INT  NOT NULL  ,
	CONSTRAINT patients_PK PRIMARY KEY (IDpatients)

	,CONSTRAINT patients_medecins_FK FOREIGN KEY (IDmedecins) REFERENCES medecins(IDmedecins)
);


-- JMERISE / Création de la table: appointment

CREATE TABLE appointment(
	IDappointment   INT IDENTITY (1,1) NOT NULL ,
	date            DATETIME NOT NULL ,
	hour            TIME (2) NOT NULL ,
	IDmedecins      INT  NOT NULL ,
	IDpatients      INT  NOT NULL  ,
	CONSTRAINT appointment_PK PRIMARY KEY (IDappointment)

	,CONSTRAINT appointment_medecins_FK FOREIGN KEY (IDmedecins) REFERENCES medecins(IDmedecins)
	,CONSTRAINT appointment_patients0_FK FOREIGN KEY (IDpatients) REFERENCES patients(IDpatients)
);



-- SPECIALITY

insert into speciality (name) values ('generaliste')
insert into speciality (name) values ('neurologue')
insert into speciality (name) values ('oncologue')
insert into speciality (name) values ('cardiologue')



-- MEDECINS

insert into medecins (lastname, firstname, mail, IDspeciality) values ('Judor', 'Eric', 'e.judor@lamanu.fr', 1)
insert into medecins (lastname, firstname, mail, IDspeciality) values ('Devaux', 'Michele', 'm.devaux@lamanu.fr', 1)
insert into medecins (lastname, firstname, mail, IDspeciality) values ('Gillet', 'Celine', 'c.gillet@lamanu.fr', 2)
insert into medecins (lastname, firstname, mail, IDspeciality) values ('Pineau', 'Therese', 't.pineau@lamanu.fr', 2)
insert into medecins (lastname, firstname, mail, IDspeciality) values ('Guy', 'Benoit', 'b.guy@lamanu.fr', 3)
insert into medecins (lastname, firstname, mail, IDspeciality) values ('Maillot', 'Philippe', 'p.maillot@lamanu.fr', 3)
insert into medecins (lastname, firstname, mail, IDspeciality) values ('Courtois', 'Andrée', 'a.courtois@lamanu.fr', 4)
insert into medecins (lastname, firstname, mail, IDspeciality) values ('Diaz', 'Émilie', 'e.diaz@lamanu.fr', 4)



-- PATIENTS

insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Sauvage', 'Margaux', '1990-07-31', 1)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Diallo', 'Benoit', '1991-08-26', 1)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Maurice', 'Francois', '1991-11-02', 1)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Lacroix', 'Agathe', '1992-04-13', 1)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Humbert', 'Robert', '1992-10-13', 1)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Gimenez', 'Aurélie', '1993-01-16', 1)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Ramos', 'Virginie', '1993-03-06', 1)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Martinez', 'Christophe', '1993-05-03', 1)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Guillet', 'Paulette', '1994-08-07', 1)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Bourdon', 'André', '1994-09-25', 1)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Fournier', 'Guy', '1995-11-04', 2)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Jacquet', 'Roger', '2000-08-25', 2)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Guilbert', 'Zoé', '2002-02-08', 2)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Courtois', 'Marguerite', '2002-08-15', 2)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Brunel', 'Colette', '2005-02-14', 2)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Gilles', 'Chantal', '2007-07-22', 2)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Brunet', 'Corinne', '2008-07-21', 2)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Chauveau', 'Lucie', '2008-10-18', 2)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Blondel', 'Laure', '2009-01-21', 2)
insert into patients (lastname, firstname, birthdate, IDmedecins) values ('Bazin', 'Alexandre', '2010-02-21', 2)



-- APPOINTMENT

insert into appointment (IDmedecins, IDpatients, date, hour) values (1, 1, '2022-06-10', '8:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (1, 2, '2022-06-10', '9:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (1, 3, '2022-06-10', '10:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (1, 4, '2022-06-10', '11:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (1, 5, '2022-06-10', '14:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (1, 6, '2022-06-10', '15:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (1, 7, '2022-06-10', '16:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (1, 8, '2022-06-10', '17:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (1, 9, '2022-06-10', '18:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (1, 10, '2022-06-10', '19:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (2, 11, '2022-06-11', '8:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (2, 12, '2022-06-11', '9:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (2, 13, '2022-06-11', '10:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (2, 14, '2022-06-11', '11:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (2, 15, '2022-06-11', '14:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (2, 16, '2022-06-11', '15:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (2, 17, '2022-06-11', '16:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (2, 18, '2022-06-11', '17:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (2, 19, '2022-06-11', '18:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (2, 20, '2022-06-11', '19:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (3, 1, '2022-06-12', '8:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (3, 2, '2022-06-12', '9:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (3, 3, '2022-06-12', '10:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (3, 4, '2022-06-12', '11:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (3, 5, '2022-06-12', '14:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (4, 6, '2022-06-12', '15:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (4, 7, '2022-06-12', '16:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (4, 8, '2022-06-12', '17:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (5, 9, '2022-06-12', '18:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (5, 10, '2022-06-12', '19:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (5, 11, '2022-06-13', '8:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (6, 12, '2022-06-13', '9:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (6, 13, '2022-06-13', '10:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (6, 14, '2022-06-13', '11:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (7, 15, '2022-06-13', '14:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (7, 16, '2022-06-13', '15:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (7, 17, '2022-06-13', '16:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (8, 18, '2022-06-13', '17:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (8, 19, '2022-06-13', '18:00:00')
insert into appointment (IDmedecins, IDpatients, date, hour) values (8, 20, '2022-06-13', '19:00:00')