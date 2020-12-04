-- Create a new database called 'bddsurf'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'bddsurf'
)
CREATE DATABASE bddsurf
GO

-- Create a new table called 'joueur' in schema 'bddsurf'
-- Drop the table if it already exists
IF OBJECT_ID('bddsurf.joueur', 'U') IS NOT NULL
DROP TABLE bddsurf.joueur
GO
-- Create the table in the specified schema
CREATE TABLE bddsurf.joueur
(
    idJoueur INT NOT NULL PRIMARY KEY, -- primary key column
    estVivant TINYINT,
    estImposteur TINYINT
    -- specify more columns here
);
GO

-- Create a new table called 'UTILISATEUR' in schema 'bddsurf'
-- Drop the table if it already exists
IF OBJECT_ID('bddsurf.utilisateur', 'U') IS NOT NULL
DROP TABLE bddsurf.utilisateur
GO
-- Create the table in the specified schema
CREATE TABLE bddsurf.utilisateur
(
    idUtilisateur INT NOT NULL PRIMARY KEY, -- primary key column
    nomUtilisateur VARCHAR,
    prenomUtilisateur VARCHAR,
    mailUtilisateur VARCHAR,
    pseudoUtilisateur VARCHAR,
    passwordUtilisateur VARCHAR
    -- specify more columns here
);
GO

-- Create a new table called 'meteoville' in schema 'bddsurf'
-- Drop the table if it already exists
IF OBJECT_ID('bddsurf.meteoville', 'U') IS NOT NULL
DROP TABLE bddsurf.meteoville
GO
-- Create the table in the specified schema
CREATE TABLE bddsurf.meteoville
(
    IdMeteoVille INT NOT NULL PRIMARY KEY, -- primary key column
    temperatureMeteoVille INT,
    ventMeteoVille INT
    -- specify more columns here
);
GO

-- Create a new table called 'meteoSpot' in schema 'bddsurf'
-- Drop the table if it already exists
IF OBJECT_ID('bddsurf.meteoSpot', 'U') IS NOT NULL
DROP TABLE bddsurf.meteoSpot
GO
-- Create the table in the specified schema
CREATE TABLE bddsurf.meteoSpot
(
    idMeteoSpot INT NOT NULL PRIMARY KEY, -- primary key column
    houleMeteoSpot INT,
    mareeMeteoSpot INT,
    ventMeteoSpot INT
    -- specify more columns here
);
GO

-- Create a new table called 'produits' in schema 'bddsurf'
-- Drop the table if it already exists
IF OBJECT_ID('bddsurf.produits', 'U') IS NOT NULL
DROP TABLE bddsurf.produits
GO
-- Create the table in the specified schema
CREATE TABLE bddsurf.produits
(
    idProduits INT NOT NULL PRIMARY KEY, -- primary key column
    estCremeSolaire TINYINT,
    estParfum TINYINT,
    estCremeHydratante TINYINT,
    estMaquillage TINYINT,
    estEssence TINYINT,
    estCigarette TINYINT,
    estEngrais TINYINT,
    estPeinture TINYINT,
    AutreProduit VARCHAR
    -- specify more columns here
);
GO

-- Create a new table called 'ville' in schema 'bddsurf'
-- Drop the table if it already exists
IF OBJECT_ID('bddsurf.ville', 'U') IS NOT NULL
DROP TABLE bddsurf.ville
GO
-- Create the table in the specified schema
CREATE TABLE bddsurf.ville
(
    idVille INT NOT NULL PRIMARY KEY, -- primary key column
    nomVille VARCHAR,
    cpVille VARCHAR,
    meteoVille INT NOT NULL
    -- specify more columns here
);
GO

-- Create a new table called 'historique' in schema 'bddsurf'
-- Drop the table if it already exists
IF OBJECT_ID('bddsurf.historique', 'U') IS NOT NULL
DROP TABLE bddsurf.historique
GO
-- Create the table in the specified schema
CREATE TABLE bddsurf.historique
(
    idHistorique INT NOT NULL PRIMARY KEY, -- primary key column
    utilisateur INT NOT NULL,
    spot INT NOT NULL,
    pointage INT NOT NULL
    -- specify more columns here
);
GO

-- Create a new table called 'pollution' in schema 'bddsurf'
-- Drop the table if it already exists
IF OBJECT_ID('bddsurf.pollution', 'U') IS NOT NULL
DROP TABLE bddsurf.pollution
GO
-- Create the table in the specified schema
CREATE TABLE bddsurf.pollution
(
    idPollution INT NOT NULL PRIMARY KEY, -- primary key column
    niveauPollution INT,
    descriptionPollution VARCHAR
    -- specify more columns here
);
GO

-- Create a new table called 'spot' in schema 'bddsurf'
-- Drop the table if it already exists
IF OBJECT_ID('bddsurf.spot', 'U') IS NOT NULL
DROP TABLE bddsurf.spot
GO
-- Create the table in the specified schema
CREATE TABLE bddsurf.spot
(
    idSpot INT NOT NULL PRIMARY KEY, -- primary key column
    nomSpot VARCHAR,
    villeSpot INT NOT NULL,
    meteoSpot INT NOT NULL,
    pollutionSpot INT NOT NULL
    -- specify more columns here
);
GO




