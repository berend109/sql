
DROP DATABASE IF EXISTS Cijferregistratie;

CREATE DATABASE Cijferregistratie;

USE Cijferregistratie;

DROP TABLE IF EXISTS Studenten;
DROP TABLE IF EXISTS Cijfers;

-- aanmaken tabel studenten

CREATE TABLE Studenten (
Studentnummer INT NOT NULL,
Studentnaam VARCHAR(20) NOT NULL,
Studierichting VARCHAR(7) NOT NULL,
Klas VARCHAR(5) NOT NULL,
Geboortedatum DATE NOT NULL,
Geslacht VARCHAR(1),
Primary key (Studentnummer));

-- aanmaken tabel cijfers

Create Table Cijfers
(Vaknaam VARCHAR (15) NOT NULL,
Studentnummer INT NOT NULL,
Cijfer DECIMAL NOT NULL,
PRIMARY KEY (studentnummer, vaknaam)) ;

-- aanmaken van de foreign key

ALTER TABLE Cijfers
ADD FOREIGN KEY (Studentnummer)
REFERENCES Studenten(Studentnummer);

-- laden van de studenten

INSERT INTO `studenten` (`Studentnummer`, `Studentnaam`, `Studierichting`, `Klas`, `Geboortedatum`, `Geslacht`) VALUES (50,'Tuitert; Mark','CE','1a','1984-07-12','M'),(66,'Hedrick; Chad','TBK','2b','1980-06-23','M'),(75,'Jong de; Bob','BIM','1a','1978-09-08','M'),(76,'Timmer; Marianne','MER','2c','1979-01-16','V'),(89,'Groenewold; Renate','MER','2b','1983-12-11','V'),(93,'Davis; Shani','TBK','1a','1981-07-29','M'),(100,'Kramer; Sven','TBK','1a','1975-08-30','M'),(103,'Smeekens; Jan','BIM','1b','1980-08-02','M'),(116,'Hedrick; Chad','BIM','1a','1982-05-01','M'),(118,'Wennemars; Erben','BIM','1a','1981-11-08','M'),(120,'Wust; Ireen','MER','2b','1980-01-01','V'),(121,'Gerritsen; Annette','TBK','1a','1982-03-05','V'),(122,'Bergsma; Jorrit','TBK','1b','1986-07-01','M'),(123,'Oenema; Thijsje','BIM','1b','1989-09-12','V'),(124,'Nuis; Kjeld','ITSM','1a','1988-12-05','M'),(125,'Groothuis; Stefan','ITSM','1a','1981-03-02','M'),(126,'Vries de; Sjoerd','TBK','2b','1984-11-11','M'),(127,'Mulder; Ronald','BIM','1a','1987-07-18','M'),(128,'Mulder; Michel','TBK','1b','1987-07-18','M'),(129,'Boer de; Margot','MER','2c','1986-12-27','V'),(130,'Riesen van; Laurine','MER','2c','1990-03-06','V'),(131,'Hospes; Jesper','BIM','1b','1989-04-25','M'),(132,'Roest; Patrick','BIM','3','1995-12-07','M'),(133,'Blokhuisen; Jan','ITSM','3','1989-04-01','M'),(134,'Jong de; Antoinette','BIM','1b','1995-04-06','V'),(135,'Joling; Marije','ITSM','1a','1986-09-30','V'),(136,'Verbij; Kai','BIM','2c','1995-09-25','M'),(137,'Ter mors; Jorien','HBO-ICT','1a','1997-07-03','V'),(138,'Visser; Emelie','HBO-ICT','1b','1999-12-12','V'),(139,'Leenstra; Marrit','HBO-ICT','1a','1999-08-15','V'),(140,'Bergsma; Jorrit','HBO-ICT','1a','1990-04-23','M'),(141,'Leerdam; Jutta','HBO-ICT','1b','1998-12-30','V'),(142,'Wijfje; Melissa','HBO-ICT','1b','1995-07-22','V'),(143,'Jong de; Lettia','HBO-ICT','1a','1993-03-05','V'),(144,'Achtereekte; Carlijn','HBO-ICT','1b','1990-01-29','V'),(145,'Ntab; Dai Dai','HBO-ICT','1a','1994-08-17','M'),(146,'Bosker; Marcel','HBO-ICT','1a','1997-01-19','M'),(147,'Kok; Femke','CE','1a','2000-10-05','V');

-- laden van de cijfers

INSERT INTO `cijfers` (`Vaknaam`, `Studentnummer`, `Cijfer`) VALUES ('Engels',50,4),('Financiering',50,2),('Logica',50,3),('Recht',50,2),('SCRUM',50,9),('SQL',50,1),('Databases',66,3),('Engels',66,10),('Financiering',66,2),('Logica',66,1),('Recht',66,9),('SCRUM',66,7),('SQL',66,3),('Engels',75,9),('Logica',75,6),('Financiering',76,4),('Recht',76,5),('SCRUM',76,4),('SQL',76,5),('Financiering',89,4),('Recht',89,9),('SCRUM',89,3),('SQL',89,7),('Databases',93,2),('Engels',93,10),('Financiering',93,6),('Logica',93,5),('Recht',93,7),('SCRUM',93,10),('SQL',93,9),('Databases',100,3),('Engels',100,0),('Financiering',100,8),('Logica',100,3),('Programmeren',100,6),('Recht',100,5),('SCRUM',100,8),('SQL',100,2),('Financiering',103,7),('Logica',103,8),('Recht',103,4),('SQL',103,4),('Engels',116,10),('Financiering',116,8),('Logica',116,4),('Recht',116,7),('SQL',116,6),('Engels',118,9),('Financiering',118,9),('Logica',118,1),('Recht',118,3),('SQL',118,8),('Financiering',120,9),('Logica',120,9),('Programmeren',120,9),('Recht',120,1),('SCRUM',120,6),('SQL',120,10),('Engels',121,0),('Financiering',121,8),('Programmeren',121,3),('Recht',121,5),('SCRUM',121,5),('SQL',121,10),('Databases',122,4),('Financiering',122,7),('Databases',123,5),('Financiering',123,6),('Databases',124,6),('Financiering',124,6),('Databases',125,7),('Financiering',125,4),('Databases',126,8),('Financiering',126,5),('Databases',127,9),('Financiering',127,9),('Databases',128,10),('Financiering',128,3),('Databases',129,1),('Financiering',129,9),('Databases',130,2),('Financiering',130,3),('Databases',131,3),('Financiering',131,8),('Databases',132,1),('Engels',132,1),('Financiering',132,3),('Logica',132,10),('Programmeren',132,8),('Recht',132,9),('SCRUM',132,5),('SQL',132,3),('Databases',133,4),('Engels',133,9),('Financiering',133,4),('Logica',133,3),('Programmeren',133,1),('Recht',133,9),('SCRUM',133,5),('SQL',133,4),('Databases',134,6),('Engels',134,7),('Financiering',134,2),('Logica',134,6),('Programmeren',134,10),('Recht',134,5),('SCRUM',134,2),('SQL',134,5),('Databases',135,8),('Engels',135,3),('Financiering',135,1),('Logica',135,8),('Programmeren',135,9),('Recht',135,4),('SCRUM',135,1),('SQL',135,6),('Databases',136,10),('Engels',136,2),('Financiering',136,8),('Logica',136,7),('Programmeren',136,6),('Recht',136,7),('SCRUM',136,1),('SQL',136,7),('Databases',137,2),('Logica',137,9),('Programmeren',137,7),('SCRUM',137,3),('SQL',137,8),('Databases',138,1),('Logica',138,10),('Programmeren',138,7),('SCRUM',138,3),('SQL',138,9),('Databases',139,7),('Logica',139,2),('Programmeren',139,2),('SCRUM',139,7),('SQL',139,5),('Databases',140,9),('Logica',140,3),('Programmeren',140,5),('SCRUM',140,8),('SQL',140,2),('Databases',141,10),('Logica',141,7),('Programmeren',141,4),('SCRUM',141,5),('SQL',141,4),('Databases',142,5),('Logica',142,9),('Programmeren',142,4),('SCRUM',142,8),('SQL',142,9),('Databases',143,5),('Logica',143,6),('Programmeren',143,2),('SCRUM',143,6),('SQL',143,9),('Databases',144,6),('Logica',144,5),('Programmeren',144,6),('SCRUM',144,6),('SQL',144,10),('Databases',145,8),('Logica',145,5),('SCRUM',145,9),('SQL',145,10),('Databases',146,1),('Logica',146,4),('Programmeren',146,9),('SCRUM',146,7),('SQL',146,1),('Logica',147,8),('SCRUM',147,3),('SQL',147,1);




