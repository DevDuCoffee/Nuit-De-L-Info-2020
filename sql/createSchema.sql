CREATE TABLE joueur
(
    idJoueur INT PRIMARY KEY NOT NULL AUTO_INCREMENT, -- primary key column
    estVivant TINYINT,
    estImposteur TINYINT
) ENGINE=InnoDB;
CREATE TABLE utilisateur
(
    idUtilisateur INT PRIMARY KEY NOT NULL AUTO_INCREMENT, -- primary key column
    nomUtilisateur VARCHAR(50),
    prenomUtilisateur VARCHAR(50),
    mailUtilisateur VARCHAR(50),
    pseudoUtilisateur VARCHAR(50),
    passwordUtilisateur VARCHAR(50)
) ENGINE=InnoDB;
CREATE TABLE meteoville
(
    IdMeteoVille INT PRIMARY KEY NOT NULL AUTO_INCREMENT, -- primary key column
    temperatureMeteoVille INT,
    ventMeteoVille INT
) ENGINE=InnoDB;
CREATE TABLE meteoSpot
(
    idMeteoSpot INT PRIMARY KEY NOT NULL AUTO_INCREMENT, -- primary key column
    houleMeteoSpot INT,
    mareeMeteoSpot INT,
    ventMeteoSpot INT
) ENGINE=InnoDB;
CREATE TABLE produits
(
    idProduits INT PRIMARY KEY NOT NULL AUTO_INCREMENT, -- primary key column
    estCremeSolaire TINYINT,
    estParfum TINYINT,
    estCremeHydratante TINYINT,
    estMaquillage TINYINT,
    estEssence TINYINT,
    estCigarette TINYINT,
    estEngrais TINYINT,
    estPeinture TINYINT,
    AutreProduit VARCHAR(50)
) ENGINE=InnoDB;
CREATE TABLE pollution
(
    idPollution INT PRIMARY KEY NOT NULL AUTO_INCREMENT, -- primary key column
    niveauPollution INT,
    descriptionPollution VARCHAR(50)
) ENGINE=InnoDB;
CREATE TABLE ville
(
    idVille INT PRIMARY KEY NOT NULL AUTO_INCREMENT, -- primary key column
    nomVille VARCHAR(50),
    cpVille VARCHAR(50),
    meteoVille INT NOT NULL,
    CONSTRAINT fk_meteoville
        FOREIGN KEY (meteoVille)
        REFERENCES meteoville(IdMeteoVille)
) ENGINE=InnoDB;
CREATE TABLE pointage
(
    idPointage INT PRIMARY KEY NOT NULL AUTO_INCREMENT, -- primary key column
    nbBaigneur INT,
    nbPratiquant INT,
    nbBateauPeche INT,
    nbBateauLoisir INT,
    nbBateauVoile INT,
    produits INT NOT NULL,
    niveauDechet INT,
    CONSTRAINT fk_produitsPointage
        FOREIGN KEY (produits)
        REFERENCES produits(idProduits)
) ENGINE=InnoDB;
CREATE TABLE spot
(
    idSpot INT PRIMARY KEY NOT NULL AUTO_INCREMENT, -- primary key column
    nomSpot VARCHAR(50),
    villeSpot INT NOT NULL,
    meteoSpot INT NOT NULL,
    pollutionSpot INT NOT NULL,
    CONSTRAINT fk_villeSpot
        FOREIGN KEY (villeSpot)
        REFERENCES ville(idVille),
    CONSTRAINT fk_meteoSpot
            FOREIGN KEY (meteoSpot)
            REFERENCES meteoSpot(idMeteoSpot),
    CONSTRAINT fk_pollutionSpot
        FOREIGN KEY (pollutionSpot)
        REFERENCES pollution(idPollution)
) ENGINE=InnoDB;
CREATE TABLE historique
(
    idHistorique INT PRIMARY KEY NOT NULL AUTO_INCREMENT, -- primary key column
    utilisateur INT NOT NULL,
    spot INT NOT NULL,
    pointage INT NOT NULL,
    CONSTRAINT fk_user
        FOREIGN KEY (utilisateur)
        REFERENCES utilisateur(idUtilisateur),
    CONSTRAINT fk_spot
        FOREIGN KEY (spot)
        REFERENCES spot(idSpot),
    CONSTRAINT fk_pointage
        FOREIGN KEY (pointage)
        REFERENCES pointage(idPointage)
) ENGINE=InnoDB;





