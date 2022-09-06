-- het creeren van een db
-- CREATE DATABASE Pres2010;

-- het creeren van db table
-- CREATE TABLE Pres (
-- 	Pres_name VARCHAR(16) NOT NULL,
--     Birth_yr INTEGER NOT NULL,
--     Yrs_serv INTEGER NOT NULL,
--     Death_age INTEGER NULL,
--     Party VARCHAR(15) NOT NULL,
--     State_born VARCHAR(20) NULL,
-- 	   primary key (Pres_name)
-- );

-- CREATE TABLE Pres_hob (
-- 	Pres_name VARCHAR(16) NOT NULL,
--     Hobby varchar(20) NOT NULL,
--     primary key (Pres_name, Hobby)
-- );

-- CREATE TABLE States (
-- 	State_name VARCHAR(20) NOT NULL,
--     Adm_enter INTEGER NOT NULL,
--     Year_enter INTEGER NOT NULL,
--     PRIMARY KEY (State_name)
-- );

-- CREATE TABLE Pres_mar (
-- 	Pres_name VARCHAR(16) NOT NULL,
--     SP_name VARCHAR(16) NOT NULL,
--     Pres_age INTEGER NOT NULL,
--     SP_age INTEGER NOT NULL,
--     Nr_child INTEGER NOT NULL,
--     Mar_year INTEGER NOT NULL,
--     PRIMARY KEY (Pres_name, SP_name)
-- );

-- CREATE TABLE El_cand (
-- 	El_year INTEGER NOT NULL,
--     Cand_name VARCHAR (16) NOT NULL,
--     Votes INTEGER NOT NULL,
--     Wl_indic VARCHAR(1) NOT NULL
-- );

-- CREATE TABLE Adm_prvp (
-- 	Adm_nr INTEGER NOT NULL,
--     Pres_name VARCHAR(16) NOT NULL,
--     Vp_name VARCHAR(16) NOT NULL,
--     PRIMARY KEY (Adm_nr, Pres_name, Vp_name)
-- );

-- CREATE TABLE Adm_pres (
-- 	Adm_nr INTEGER NOT NULL,
--     Pres_name VARCHAR(16) NOT NULL,
--     Year_inaug INTEGER NOT NULL,
--     PRIMARY KEY (Adm_nr)
-- );

-- foreign keys toevoegen
-- ALTER TABLE Pres
-- ADD FOREIGN KEY (State_born) REFERENCES States(State_name);

-- ALTER TABLE Pres_hob
-- ADD FOREIGN KEY (Pres_name) REFERENCES Pres(Pres_name);

-- ALTER TABLE Pres_mar
-- ADD FOREIGN KEY (Pres_name) REFERENCES Pres(Pres_name);

-- ALTER TABLE Adm_prvp
-- ADD FOREIGN KEY (Pres_name) REFERENCES Pres(Pres_name);

-- ALTER TABLE Adm_pres
-- ADD FOREIGN KEY (Pres_name) REFERENCES Adm_prvp(Pres_name);

-- ALTER TABLE Adm_pres
-- ADD FOREIGN KEY (Pres_name) REFERENCES Pres(Pres_name);