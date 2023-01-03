-- PARTIE 8 : Les jointures

-- Exercice 1
SELECT frameworks.name as "framework", languages.name as "language" FROM frameworks
RIGHT JOIN languages ON languages.id = frameworks.languagesId

-- Exercice 2
SELECT frameworks.name as "framework", languages.name as "language" FROM frameworks
INNER JOIN languages ON languages.id = frameworks.languagesId

-- Exercice 3
SELECT languages.name as "language", COUNT(frameworks.id) as "nbFrameworks" FROM frameworks
INNER JOIN languages ON frameworks.languagesId = languages.id
GROUP BY languages.name