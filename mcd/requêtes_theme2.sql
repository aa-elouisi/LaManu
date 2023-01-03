-- REQUÊTE 1
select appointment.date, appointment.hour, patients.firstname as 'patient', patients.lastname as 'patient', medecins.firstname as 'médecin', medecins.lastname as 'médecin', speciality.name as 'spécialité'
from patients
inner join appointment
on patients.IDpatients = appointment.IDpatients
inner join medecins
on medecins.IDmedecins = appointment.IDmedecins
inner join speciality
on speciality.IDspeciality = medecins.IDspeciality
order by appointment.date


-- REQUÊTE 2
select medecins.firstname as 'médecin', medecins.lastname as 'médecin', appointment.date, appointment.hour, patients.firstname as 'patient', patients.lastname as 'patient'
from patients
inner join appointment
on patients.IDpatients = appointment.IDpatients
inner join medecins
on medecins.IDmedecins = appointment.IDmedecins
where medecins.IDmedecins = 1
order by appointment.date


-- REQUÊTE 3
select medecins.firstname as 'médecin', medecins.lastname as 'médecin', patients.firstname as 'patient', patients.lastname as 'patient', appointment.date, appointment.hour
from patients
inner join appointment
on patients.IDpatients = appointment.IDpatients
inner join medecins
on medecins.IDmedecins = appointment.IDmedecins
where appointment.date = '2022-06-12'


-- REQUÊTE 4
select appointment.date, appointment.hour, speciality.name
from appointment
inner join medecins
on medecins.IDmedecins = appointment.IDmedecins
inner join speciality
on medecins.IDspeciality = speciality.IDspeciality
where speciality.IDspeciality = 1


-- REQUÊTE 5
select medecins.firstname, medecins.lastname, speciality.name from medecins
inner join speciality
on medecins.IDspeciality = speciality.IDspeciality
where speciality.IDspeciality = 1


-- REQUÊTE 6
select patients.lastname as 'patient', medecins.lastname as 'médecin' from patients
inner join medecins
on patients.IDmedecins = medecins.IDmedecins
where medecins.IDmedecins = 1