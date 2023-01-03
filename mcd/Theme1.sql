
-- JMERISE / Création de la table: professeurs

CREATE TABLE professeurs(
	ID       INT IDENTITY (1,1) NOT NULL ,
	Nom      VARCHAR (50) NOT NULL ,
	Prenom   VARCHAR (50) NOT NULL ,
	Mail     VARCHAR (50) NOT NULL  ,
	CONSTRAINT professeurs_PK PRIMARY KEY (ID)
);



-- JMERISE / Création de la table: classes

CREATE TABLE classes(
	ID       INT IDENTITY (1,1) NOT NULL ,
	Nom      VARCHAR (50) NOT NULL ,
	Niveau   VARCHAR (50) NOT NULL  ,
	CONSTRAINT classes_PK PRIMARY KEY (ID)
);



-- JMERISE / Création de la table: eleves

CREATE TABLE eleves(
	ID           INT IDENTITY (1,1) NOT NULL ,
	Nom          VARCHAR (50) NOT NULL ,
	Prenom       VARCHAR (50) NOT NULL ,
	Date         DATETIME NOT NULL ,
	ID_classes   INT  NOT NULL  ,
	CONSTRAINT eleves_PK PRIMARY KEY (ID)

	,CONSTRAINT eleves_classes_FK FOREIGN KEY (ID_classes) REFERENCES classes(ID)
);



-- JMERISE / Création de la table: matieres

CREATE TABLE matieres(
	ID    INT IDENTITY (1,1) NOT NULL ,
	Nom   VARCHAR (50) NOT NULL  ,
	CONSTRAINT matieres_PK PRIMARY KEY (ID)
);



-- JMERISE / Création de la table: notes

CREATE TABLE notes(
	ID            INT  NOT NULL ,
	ID_eleves     INT  NOT NULL ,
	Note          FLOAT  NOT NULL ,
	Apreciation   VARCHAR (50) NOT NULL  ,
	CONSTRAINT notes_PK PRIMARY KEY (ID,ID_eleves)

	,CONSTRAINT notes_matieres_FK FOREIGN KEY (ID) REFERENCES matieres(ID)
	,CONSTRAINT notes_eleves0_FK FOREIGN KEY (ID_eleves) REFERENCES eleves(ID)
);



-- JMERISE / Création de la table: enseigner

CREATE TABLE enseigner(
	ID            INT  NOT NULL ,
	ID_matieres   INT  NOT NULL ,
	ID_classes    INT  NOT NULL  ,
	CONSTRAINT enseigner_PK PRIMARY KEY (ID,ID_matieres,ID_classes)

	,CONSTRAINT enseigner_professeurs_FK FOREIGN KEY (ID) REFERENCES professeurs(ID)
	,CONSTRAINT enseigner_matieres0_FK FOREIGN KEY (ID_matieres) REFERENCES matieres(ID)
	,CONSTRAINT enseigner_classes1_FK FOREIGN KEY (ID_classes) REFERENCES classes(ID)
);




-- MATIERES

insert into Matieres (Nom) values ('Maths')
insert into Matieres (Nom) values ('Sport')
insert into Matieres (Nom) values ('Français')
insert into Matieres (Nom) values ('Anglais')
insert into Matieres (Nom) values ('Histoire')
insert into Matieres (Nom) values ('Géographie')



-- CLASSES

insert into classes (Nom, Niveau) values ('6A'), ('6e');
insert into classes (Nom, Niveau) values ('6B'), ('6e');
insert into classes (Nom, Niveau) values ('5A'), ('5e');
insert into classes (Nom, Niveau) values ('5B'), ('5e');
insert into classes (Nom, Niveau) values ('4A'), ('4e');
insert into classes (Nom, Niveau) values ('4B'), ('4e');
insert into classes (Nom, Niveau) values ('3A'), ('3e');
insert into classes (Nom, Niveau) values ('3B'), ('3e');



-- PROFESSEURS

insert into professeurs (Nom, Prenom, Mail) values ('Dupont', 'Alex', 'a.dupont@lamanu.fr')
insert into professeurs (Nom, Prenom, Mail) values ('Daisy', 'Pascal', 'p.daisy@lamanu.fr')
insert into professeurs (Nom, Prenom, Mail) values ('Auger', 'Luc', 'l.auger@lamanu.fr')
insert into professeurs (Nom, Prenom, Mail) values ('Legros', 'Dominique', 'd.legros@lamanu.fr')
insert into professeurs (Nom, Prenom, Mail) values ('Maillot', 'Denise', 'd.maillot@lamanu.fr')
insert into professeurs (Nom, Prenom, Mail) values ('Bonnet', 'Marcel', 'm.bonnet@lamanu.fr')
insert into professeurs (Nom, Prenom, Mail) values ('Delmas', 'Louis', 'l.delmas@lamanu.fr')
insert into professeurs (Nom, Prenom, Mail) values ('Dos Santos', 'Bertrand', 'b.dossantos@lamanu.fr')
insert into professeurs (Nom, Prenom, Mail) values ('Raymond', 'Lucie', 'l.raymond@lamanu.fr')
insert into professeurs (Nom, Prenom, Mail) values ('Aubry', 'Aimee', 'a.aubry@lamanu.fr')
insert into professeurs (Nom, Prenom, Mail) values ('Honore', 'Sebastien', 's.honore@lamanu.fr')
insert into professeurs (Nom, Prenom, Mail) values ('Francois', 'Margot', 'm.francois@lamanu.fr')



-- ELEVES

insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Dufour', 'Hortense', convert(datetime,'2006-23-11',103),1);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Dupont', 'Matthieu', convert(datetime,'2006-16-3',103),1);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Pages', 'Audrey', convert(datetime,'2006-6-6',103),1);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Dupuis', 'Isabelle', convert(datetime,'2006-12-8',103),1);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('de la Rey', 'Jules', convert(datetime,'2006-30-12',103),1);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Blondel', 'Penelope-Gabrielle', convert(datetime,'2006-16-8',103),2);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Samson-Lacombe', 'Nicolas', convert(datetime,'2006-11-1',103),2);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Bodin', 'Franck-Martin', convert(datetime,'2006-6-1',103),2);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Merle', 'Henriette', convert(datetime,'2006-18-3',103),2);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Maury', 'Alice', convert(datetime,'2006-22-4',103),2);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Lesage-Dumont', 'Elise', convert(datetime,'2005-23-11',103),3);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Moreno', 'Remy', convert(datetime,'2005-16-3',103),3);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Rodrigues', 'Bernadette', convert(datetime,'2005-6-6',103),3);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('de Clement', 'Victor', convert(datetime,'2005-12-8',103),3);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Joly', 'Marcelle', convert(datetime,'2005-30-12',103),3);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Dupont', 'Stephanie', convert(datetime,'2005-16-8',103),4);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Benard', 'Olivie-Martine', convert(datetime,'2005-11-1',103),4);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Rodriguez', 'Lorraine', convert(datetime,'2005-6-1',103),4);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Bailly', 'Christine', convert(datetime,'2005-18-3',103),4);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Simon', 'Pauline', convert(datetime,'2005-22-4',103),4);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Pires', 'Elodie', convert(datetime,'2004-23-11',103),5);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Chauvet', 'Elodie', convert(datetime,'2004-16-3',103),5);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Boucher', 'Susanne', convert(datetime,'2004-6-6',103),5);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Garcia', 'Helene', convert(datetime,'2004-12-8',103),5);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('du Parent', 'Daniel', convert(datetime,'2004-30-12',103),5);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Bertrand-Andre', 'Sophie', convert(datetime,'2004-16-8',103),6);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Morel-Camus', 'Michele', convert(datetime,'2004-11-1',103),6);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Bernier', 'Susanne', convert(datetime,'2004-6-1',103),6);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Guillou', 'Zacharie', convert(datetime,'2004-18-3',103),6);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Laine', 'Claudine', convert(datetime,'2004-22-4',103),6);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Chretien', 'Etienne', convert(datetime,'2003-23-11',103),7);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Perrot', 'Elise', convert(datetime,'2003-16-3',103),7);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Joseph', 'Aimee', convert(datetime,'2003-6-6',103),7);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Bourdon', 'daisy-Juliette', convert(datetime,'2003-12-8',103),7);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Vallet', 'Suzanne', convert(datetime,'2003-30-12',103),7);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Munoz', 'Sylvie', convert(datetime,'2003-16-8',103),8);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Potier', 'Nicolas', convert(datetime,'2003-11-1',103),8);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Laporte', 'Colette', convert(datetime,'2003-6-1',103),8);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Tessier', 'Paulette', convert(datetime,'2003-18-3',103),8);
insert into Eleves (Nom, Prenom, Date, ID_classes) values ('Blanc', 'Frederic', convert(datetime,'2003-22-4',103),8);



-- ENSEIGNER

insert into enseigner (ID, ID_matieres, ID_classes) values (1, 1, 1)
insert into enseigner (ID, ID_matieres, ID_classes) values (1, 1, 3)
insert into enseigner (ID, ID_matieres, ID_classes) values (1, 1, 5)
insert into enseigner (ID, ID_matieres, ID_classes) values (1, 1, 7)
insert into enseigner (ID, ID_matieres, ID_classes) values (2, 1, 2)
insert into enseigner (ID, ID_matieres, ID_classes) values (2, 1, 4)
insert into enseigner (ID, ID_matieres, ID_classes) values (2, 1, 6)
insert into enseigner (ID, ID_matieres, ID_classes) values (2, 1, 8)
insert into enseigner (ID, ID_matieres, ID_classes) values (3, 2, 1)
insert into enseigner (ID, ID_matieres, ID_classes) values (3, 2, 3)
insert into enseigner (ID, ID_matieres, ID_classes) values (3, 2, 5)
insert into enseigner (ID, ID_matieres, ID_classes) values (3, 2, 7)
insert into enseigner (ID, ID_matieres, ID_classes) values (4, 2, 2)
insert into enseigner (ID, ID_matieres, ID_classes) values (4, 2, 4)
insert into enseigner (ID, ID_matieres, ID_classes) values (4, 2, 6)
insert into enseigner (ID, ID_matieres, ID_classes) values (4, 2, 8)
insert into enseigner (ID, ID_matieres, ID_classes) values (5, 3, 1)
insert into enseigner (ID, ID_matieres, ID_classes) values (5, 3, 3)
insert into enseigner (ID, ID_matieres, ID_classes) values (5, 3, 5)
insert into enseigner (ID, ID_matieres, ID_classes) values (5, 3, 7)
insert into enseigner (ID, ID_matieres, ID_classes) values (6, 3, 2)
insert into enseigner (ID, ID_matieres, ID_classes) values (6, 3, 4)
insert into enseigner (ID, ID_matieres, ID_classes) values (6, 3, 6)
insert into enseigner (ID, ID_matieres, ID_classes) values (6, 3, 8)
insert into enseigner (ID, ID_matieres, ID_classes) values (7, 4, 1)
insert into enseigner (ID, ID_matieres, ID_classes) values (7, 4, 3)
insert into enseigner (ID, ID_matieres, ID_classes) values (7, 4, 5)
insert into enseigner (ID, ID_matieres, ID_classes) values (7, 4, 7)
insert into enseigner (ID, ID_matieres, ID_classes) values (8, 4, 2)
insert into enseigner (ID, ID_matieres, ID_classes) values (8, 4, 4)
insert into enseigner (ID, ID_matieres, ID_classes) values (8, 4, 6)
insert into enseigner (ID, ID_matieres, ID_classes) values (8, 4, 8)
insert into enseigner (ID, ID_matieres, ID_classes) values (9, 5, 1)
insert into enseigner (ID, ID_matieres, ID_classes) values (9, 5, 3)
insert into enseigner (ID, ID_matieres, ID_classes) values (9, 5, 5)
insert into enseigner (ID, ID_matieres, ID_classes) values (9, 5, 7)
insert into enseigner (ID, ID_matieres, ID_classes) values (10, 5, 2)
insert into enseigner (ID, ID_matieres, ID_classes) values (10, 5, 4)
insert into enseigner (ID, ID_matieres, ID_classes) values (10, 5, 6)
insert into enseigner (ID, ID_matieres, ID_classes) values (10, 5, 8)
insert into enseigner (ID, ID_matieres, ID_classes) values (11, 6, 1)
insert into enseigner (ID, ID_matieres, ID_classes) values (11, 6, 3)
insert into enseigner (ID, ID_matieres, ID_classes) values (11, 6, 5)
insert into enseigner (ID, ID_matieres, ID_classes) values (11, 6, 7)
insert into enseigner (ID, ID_matieres, ID_classes) values (12, 6, 2)
insert into enseigner (ID, ID_matieres, ID_classes) values (12, 6, 4)
insert into enseigner (ID, ID_matieres, ID_classes) values (12, 6, 6)
insert into enseigner (ID, ID_matieres, ID_classes) values (12, 6, 8)



-- NOTES

insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 1, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 1, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 1, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 1, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 1, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 1, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 2, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 2, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 2, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 2, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 2, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 2, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 3, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 3, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 3, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 3, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 3, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 3, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 4, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 4, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 4, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 4, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 4, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 4, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 5, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 5, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 5, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 5, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 5, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 5, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 6, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 6, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 6, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 6, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 6, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 6, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 7, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 7, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 7, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 7, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 7, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 7, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 8, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 8, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 8, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 8, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 8, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 8, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 9, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 9, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 9, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 9, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 9, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 9, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 10, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 10, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 10, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 10, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 10, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 10, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 11, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 11, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 11, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 11, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 11, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 11, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 12, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 12, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 12, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 12, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 12, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 12, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 13, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 13, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 13, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 13, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 13, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 13, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 14, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 14, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 14, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 14, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 14, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 14, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 15, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 15, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 15, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 15, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 15, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 15, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 16, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 16, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 16, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 16, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 16, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 16, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 17, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 17, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 17, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 17, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 17, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 17, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 18, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 18, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 18, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 18, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 18, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 18, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 19, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 19, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 19, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 19, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 19, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 19, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 20, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 20, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 20, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 20, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 20, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 20, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 21, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 21, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 21, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 21, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 21, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 21, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 22, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 22, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 22, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 22, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 22, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 22, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 23, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 23, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 23, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 23, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 23, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 23, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 24, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 24, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 24, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 24, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 24, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 24, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 25, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 25, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 25, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 25, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 25, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 25, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 26, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 26, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 26, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 26, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 26, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 26, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 27, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 27, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 27, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 27, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 27, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 27, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 28, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 28, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 28, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 28, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 28, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 28, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 29, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 29, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 29, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 29, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 29, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 29, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 30, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 30, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 30, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 30, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 30, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 30, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 31, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 31, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 31, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 31, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 31, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 31, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 32, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 32, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 32, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 32, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 32, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 32, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 33, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 33, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 33, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 33, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 33, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 33, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 34, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 34, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 34, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 34, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 34, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 34, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 35, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 35, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 35, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 35, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 35, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 35, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 36, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 36, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 36, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 36, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 36, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 36, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 37, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 37, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 37, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 37, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 37, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 37, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 38, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 38, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 38, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 38, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 38, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 38, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 39, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 39, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 39, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 39, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 39, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 39, 1, 'Tres insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (1, 40, 7, 'Bien ! ou Bon travail !');
insert into notes(ID, ID_eleves, Note, Apreciation) values (2, 40, 6, 'Assez bien ou Assez bon travail');
insert into notes(ID, ID_eleves, Note, Apreciation) values (3, 40, 5, 'Passable');
insert into notes(ID, ID_eleves, Note, Apreciation) values (4, 40, 4, 'Des difficultes ');
insert into notes(ID, ID_eleves, Note, Apreciation) values (5, 40, 3, 'Insuffisant');
insert into notes(ID, ID_eleves, Note, Apreciation) values (6, 40, 1, 'Tres insuffisant');