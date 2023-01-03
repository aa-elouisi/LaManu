-- PARTIE 2 : BONUS
CREATE TABLE clients
(
    id INT IDENTITY PRIMARY KEY,
    lastname NVARCHAR(50),
    firstname NVARCHAR(50),
    birthdate DATE,
    address NVARCHAR(50),
    firstPhoneNumber INT,
    secondPhoneNumber INT,
    mail NVARCHAR(50)
)

-- PARTIE 3 : BONUS
ALTER TABLE clients
DROP COLUMN secondPhoneNumber;

EXEC sp_rename 'clients.firstPhoneNumber', 'phoneNumber', 'COLUMN';

ALTER TABLE clients
ALTER COLUMN phoneNumber NVARCHAR;

ALTER TABLE clients
ADD zipCode NVARCHAR, city NVARCHAR;

--SELECT * FROM clients