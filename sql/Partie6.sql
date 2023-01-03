-- PARTIE 6 : Élargir les possibilités de la clause WHERE

-- Exercice 1
SELECT * FROM frameworks
WHERE version LIKE '2.%'

-- Exercice 2
SELECT * FROM frameworks
WHERE id in ('1', '3')

-- Exercice 3
SELECT * FROM ide
WHERE date BETWEEN '2010-01-01' AND '2011-12-31'