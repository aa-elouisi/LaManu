-- PARTIE 2 : Création de tables

-- Exercice 1
CREATE TABLE languages
(
    id INT identity PRIMARY KEY,
    language NVARCHAR,
)

-- Exercice 2
CREATE TABLE tools
(
    id INT identity PRIMARY KEY,
    tool NVARCHAR,
)

-- Exercice 3
CREATE TABLE frameworks
(
    id INT identity PRIMARY KEY,
    name NVARCHAR,
)

-- Exercice 4
CREATE TABLE libraries
(
    id INT identity PRIMARY KEY,
    library NVARCHAR,
)

-- Exercice 5
CREATE TABLE ide
(
    id INT identity PRIMARY KEY,
    ideName NVARCHAR,
)

-- Exercice 6
CREATE TABLE browsers
(
    id INT identity PRIMARY KEY,
    name NVARCHAR,
)

-- Exercice 7
DROP TABLE tools

-- Exercice 8
DROP TABLE libraries

-- Exercice 9
DROP TABLE ide

-- BONUS
CREATE DATABASE codex

--SELECT * FROM languages