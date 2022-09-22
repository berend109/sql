-- invoegen van alle records in de hobby tabel
-- beveiliging tegen wijzigen/ verwijderen van records van de database opheffen mbt sleutelvelden icm GEEN WHERE
-- zie Edit / Preferences / SQL Editor 
SET SQL_SAFE_UPDATES = 0;
-- Tabel leegmaken 
DELETE FROM pres_hob;
-- beveiliging tegen wijzigen/verwijderen van records van de database aanzetten mbt sleutelvelden icm GEEN WHERE
SET SQL_SAFE_UPDATES = 1;
-- toevoegen van de records

INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Adams J Q', 'Billiards');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Adams J Q', 'Swimming');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Adams J Q', 'Walking');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Arthur C A', 'Fishing');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Bush G W', 'Fishing');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Bush G W', 'Hunting');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Bush G W', 'Reading');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Bush G W', 'Running');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Bush G W H', 'Baseball');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Bush G W H', 'Soccer');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Cleveland G', 'Fishing');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Clinton W J B', 'Playing Saxophone');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Clinton W J B', 'Reading');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Clinton W J B', 'Running');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Coolidge C', 'Fishing');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Coolidge C', 'Golf');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Coolidge C', 'Indian Clubs');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Coolidge C', 'Mechanical Horse');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Coolidge C', 'Pitching Hay');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Eisenhower D D', 'Bridge');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Eisenhower D D', 'Fishing');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Eisenhower D D', 'Golf');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Eisenhower D D', 'Hunting');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Eisenhower D D', 'Painting');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Garfield J A', 'Billiards');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Harding W G', 'Golf');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Harding W G', 'Poker');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Harding W G', 'Riding');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Harrison B', 'Hunting');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Hayes R B', 'Croquet');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Hayes R B', 'Driving');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Hayes R B', 'Shooting');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Hoover H C', 'Fishing');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Hoover H C', 'Medicine Ball');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Jackson A', 'Riding');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Jefferson T', 'Fishing');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Jefferson T', 'Riding');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Johnson L B', 'Riding');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Kennedy J F', 'Sailing');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Kennedy J F', 'Swimming');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Kennedy J F', 'Touch Football');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Lincoln A', 'Walking');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('McKinley W', 'Riding');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('McKinley W', 'Swimming');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('McKinley W', 'Walking');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Nixon R M', 'Golf');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Roosevelt F D', 'Fishing');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Roosevelt F D', 'Sailing');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Roosevelt F D', 'Swimming');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Roosevelt T', 'Boxing');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Roosevelt T', 'Hunting');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Roosevelt T', 'Jujitsu');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Roosevelt T', 'Riding');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Roosevelt T', 'Shooting');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Roosevelt T', 'Tennis');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Roosevelt T', 'Wrestling');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Taft W H', 'Golf');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Taft W H', 'Riding');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Taylor Z', 'Riding');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Truman H S', 'Fishing');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Truman H S', 'Poker');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Truman H S', 'Walking');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Van Buren M', 'Riding');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Washington G', 'Fishing');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Washington G', 'Riding');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Wilson W', 'Golf');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Wilson W', 'Riding');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Wilson W', 'Walking');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Trump D J', 'Walking');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Trump D J', 'Golf');
INSERT INTO Pres_hob (Pres_name, Hobby) VALUES ('Trump D J', 'Watching TV');

-- Check op de ingevoerde records
SELECT * FROM pres_hob ;