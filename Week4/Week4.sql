-- 1)	Voeg de presidentgegevens van Trump toe aan de PRES-tabel met het INSERT-commando (voor de gegevens van TRUMP zie pag. 3)
-- INSERT INTO Pres_hob (Pres_name, hobby) VALUES (“Trump, D”, “Gaming”);
-- SELECT * FROM Pres;
-- INSERT INTO Pres (Pres_name, Birth_Yr, Yrs_serv, Death_age, Party, State_born) VALUES ("Trump D J", 1946, 4, 0, "Republican", "New York");
-- SELECT * FROM Pres;
-- 2)	Voeg de 2 hobby’s van Trump toe aan de tabel hobby’s met INSERT
-- SELECT * FROM Pres_hob;
-- INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ("Trump D J", "golf");
-- INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ("Trump D J", "walking");
-- SELECT * FROM Pres_hob;
-- 3)	Verwijder de president weer uit presidenten-tabel en uit de hobby-tabel met het commando: DELETE. Denk aan de volgorde van verwijderen !!
-- DELETE FROM  <tabelnaam> WHERE <conditie>
-- SELECT * FROM Pres_hob;
-- DELETE FROM Pres_hob WHERE Pres_name = "Trump D J";
-- SELECT * FROM Pres_hob;
-- SELECT * FROM Pres;
-- DELETE FROM Pres WHERE Pres_name = "Trump D J";
-- SELECT * FROM Pres;
-- 4)	Voeg de president en hobby’s snel weer toe met je 3 gemaakte INSERT-query’s
-- INSERT INTO Pres (Pres_name, Birth_Yr, Yrs_serv, Death_age, Party, State_born) VALUES ("Trump D J", 1946, 4, 0, "Republican", "New York");
-- INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ("Trump D J", "golf");
-- INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ("Trump D J", "walking");
-- SELECT * FROM Pres_hob;
-- 5)	Wijzig de hobby Golf van Trump in Midgetgolf met het UPDATE -commando
-- UPDATE <tabelnaam> SET <veldnaam> = <waarde> WHERE <conditie>
-- UPDATE Pres_hob SET Hobby = "Midgetgolf" WHERE Pres_name = "Trump D J" AND Hobby = "golf";
-- UPDATE Pres_hob SET Hobby = "Walking" WHERE Pres_name = "Trump D J" AND Hobby = "walking";
-- SELECT * FROM Pres_hob;
-- 6)	Verwijder de hobby’s Fishing en Riding uit de database met 1 DELETE-opdracht
-- SELECT * FROM Pres_hob WHERE Hobby = "Fishing" OR Hobby = "Riding";
-- SET SQL_SAFE_UPDATES=0; -- defualt is safe mode and there is no key in this table
-- DELETE FROM Pres_hob WHERE Hobby = "Fishing" OR Hobby = "Riding";
-- 7)	Verwijder alle records uit de hobby-tabel met DELETE
-- SELECT * FROM Pres_hob;
-- SET SQL_SAFE_UPDATES=0;
-- DELETE FROM Pres_hob;
-- SET SQL_SAFE_UPDATES=1;
-- SELECT * FROM Pres_hob;

-- 8)	Importeer ze weer snel met de SQL-file (staat klaar bij praktijkles 4)
-- Server -> Data import -> import from self contained file -> *.sql bestand kiezen -> Default target schema -> start import -> magic
-- SELECT * FROM Pres_hob;

-- 9)	Voeg de 3 huwelijken van de president toe met INSERT (3 query’s)
-- SELECT * FROM Pres_mar;
-- INSERT INTO Pres_mar (Pres_name, SP_name, Pres_age, SP_age, Nr_child, Mar_year) VALUES ("Trump D J", "Zelnickova I", 31, 28, 3, 1977);
-- INSERT INTO Pres_mar (Pres_name, SP_name, Pres_age, SP_age, Nr_child, Mar_year) VALUES ("Trump D J", "Maples M", 47, 30, 1, 1993);
-- INSERT INTO Pres_mar (Pres_name, SP_name, Pres_age, SP_age, Nr_child, Mar_year) VALUES ("Trump D J", "Knauss M", 59, 35, 1, 2005);

-- 10)	Vul ook de tabellen adm_pres en adm_prvp aan met de ontbrekende gegevens (denk aan de invoervolgorde!)
-- volgorde bellangerijk vanwege foreign key conflict
-- SELECT * FROM Adm_prvp;
-- INSERT INTO Adm_prvp (Adm_nr, Pres_name, Vp_name) VALUES (58, "Trump D J", "Pence M");
-- SELECT * FROM Adm_pres;
-- INSERT INTO Adm_pres (Adm_nr, Pres_name, Year_inaug) VALUES (58, "Trump D J", 2017);

-- 11)	Maak je database compleet met de el-cand gegevens.
-- SELECT * FROM El_cand;
-- INSERT INTO El_cand (El_year, Cand_name, Votes, Wl_indic) VALUES (2016, "Trump D J", 306, "W");
-- INSERT INTO El_cand (El_year, Cand_name, Votes, Wl_indic) VALUES (2016, "Clinton H", 232, "L");
-- INSERT INTO El_cand (El_year, Cand_name, Votes, Wl_indic) VALUES (2016, "Johnson G", 0, "L");
-- INSERT INTO El_cand (El_year, Cand_name, Votes, Wl_indic) VALUES (2016, "Stein J", 0, "L");

-- 12)	Voeg in de huwelijkstabel het veld divorce_date toe (scheidingsdatum), dit is een verplicht datumveld (type DATE)
-- ALTER TABLE Pres_mar ADD COLUMN divorce_date DATE NOT NULL default(current_timestamp);
-- ALTER TABLE Pres_mar DROP COLUMN divorce_date;
-- SELECT * FROM Pres_mar;
-- 13)	Zet voor iedereen dit veld op “2022-09-22” met een UPDATE Gebruik “<datum>”
-- SET SQL_SAFE_UPDATES=0;
-- UPDATE Pres_mar SET divorce_date = "2022-09-22";

-- SELECT * FROM Pres_mar;
-- 14)	Zet voor president Trump dit veld op de dag van vandaag voor zijn huwelijk met Melania met een UPDATE
-- UPDATE Pres_mar SET divorce_date = current_timestamp WHERE SP_name = "Knauss M";
-- SELECT SP_name from Pres_mar WHERE SP_name = "Knauss M";
-- SELECT * from Pres_mar
-- 15)	Verwijder het divorce_date-veld weer uit het ontwerp van de tabel met ALTER TABLE
-- ALTER TABLE Pres_mar DROP COLUMN divorce_date;
SELECT * FROM Pres_mar;

-- 16)	In de tabel EL_CAND wil men ook graag snel kunnen zoeken op de Cand_name. Hiervoor moet er een index aangemaakt worden. Maak een index aan met SQL in de tabel EL_CAND met commando CREATE INDEX. Je mag voor deze index zelf een naam bedenken.


-- 17)	Verwijder met SQL (DROP INDEX) de nieuw aangemaakte index
-- 18)	De tabel EL_CAND heeft nog geen PRIMARY KEY. Dit is een samengestelde sleutel van de eigenschap: Cand_name + El_Year. Voeg deze toe.
-- 19)	Verder deze PRIMARY KEY weer.