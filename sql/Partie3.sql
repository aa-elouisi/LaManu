-- PARTIE 3 : Modifications de tables

-- Exercice 1
ALTER TABLE languages
ADD versions NVARCHAR;

-- Exercice 2
ALTER TABLE frameworks
ADD version INT;

-- Exercice 3
EXEC sp_rename 'languages.versions', 'version', 'COLUMN';

-- Exercice 4
EXEC sp_rename 'frameworks.name', 'framework', 'COLUMN';

-- Exercice 5
ALTER TABLE frameworks
ALTER COLUMN version NVARCHAR(10)