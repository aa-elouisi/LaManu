-- REQUÊTE 1
select Prenom, eleves.Nom, Note, Apreciation from eleves
inner join notes
on eleves.id = notes.ID_eleves
inner join matieres
on matieres.id = notes.ID

-- REQUÊTE 2
select  AVG(Note), matieres.Nom  as 'moyenne' from eleves
inner join notes
on eleves.id = notes.ID_eleves
inner join matieres
on matieres.id = notes.ID
group by matieres.Nom

-- REQUÊTE 3
select  AVG(Note), eleves.Nom  as 'moyenne' from eleves
inner join notes
on eleves.id = notes.ID_eleves
inner join matieres
on matieres.id = notes.ID
group by eleves.Nom

-- REQUÊTE 4
select AVG(Note) as 'moyenne classe' from classes
inner join eleves
on eleves.ID_classes = ID_classes
inner join notes
on eleves.id = notes.ID_eleves
where notes.ID = 1
group by classes.Nom

-- REQUÊTE 5
select AVG(Note) as 'moyenne générale classe' from classes
inner join eleves
on eleves.ID_classes = ID_classes
inner join notes
on eleves.ID = notes.ID_eleves
where classes.ID = 1

-- REQUÊTE 6
select * from professeurs
inner join enseigner
on professeurs.ID = enseigner.ID
inner join classes
on enseigner.ID_classes = classes.ID
inner join eleves
on eleves.ID_classes = classes.ID
where professeurs.ID = 1