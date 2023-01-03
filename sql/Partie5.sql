-- PARTIE 5 : Sélection de données

-- Exercice 1
SELECT * FROM languages

-- Exercice 2
SELECT language FROM languages 
WHERE language = 'PHP'

-- Exercice 3
SELECT language FROM languages 
WHERE language IN ('PHP', 'JavaScript')

-- Exercice 4
SELECT language FROM languages 
WHERE id IN ('3', '5', '7')

-- Exercice 5
SELECT TOP 2 * FROM languages
WHERE language = 'JavaScript'

-- Exercice 6
SELECT * FROM languages
WHERE language != 'PHP'

-- Exercice 7
SELECT * FROM languages
ORDER BY language