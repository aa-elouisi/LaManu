-- PARTIE 7 : Suppression et modification de données

-- Exercice 1
DELETE FROM languages
WHERE language = 'HTML'

-- Exercice 2
UPDATE frameworks
SET framework = 'Symphony2'
WHERE framework = 'Symphony'

-- Exercice 3
UPDATE languages
SET version = '5.1'
WHERE language = 'JavaScript' AND version = '5'