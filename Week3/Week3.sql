-- 1.	Welke staten kwamen bij de Unie in 1776, 1791 en 1792? Toon de staat en het jaar, gesorteerd op staat.
-- SELECT Year_enter as "Jaar" FROM States WHERE Year_enter IN (1776, 1791, 1792) ORDER BY Year_enter;

-- 2.	Toon alle hobby’s van presidenten (toon president en hobby) maar niet de hobby Fishing.
-- SELECT DISTINCT Hobby FROM Pres_hob WHERE Hobby <> "Fishing";

-- 3.	Toon de presidenten (toon president en hobby) die Golf of Riding hebben als hobby.
-- SELECT * FROM Pres_hob WHERE Hobby IN ("Golf", "Riding");

-- 4.	Toon de presidenten wiens achternaam met een R begint.
-- SELECT Pres_name FROM Pres WHERE Pres_name LIKE "R%";

-- 5.	Toon de presidenten wiens achternaam op “ing” eindigt.
-- SELECT Pres_name FROM Pres WHERE Pres_name LIKE "%ing %";

-- 6.	Zijn er presidenten waarbij de achternaam en hun hobby allebei met een “R” beginnen?
-- SELECT * FROM Pres_hob WHERE Pres_name LIKE "R%" AND Hobby LIKE "R%";

-- 7.	Wat is het sterftejaar van de presidenten? Toon geboortejaar en de leeftijd en deze opgeteld. Geef de kolom de juiste naam.
-- SELECT Birth_Yr+Death_age AS Sterftejaar FROM pres

-- 8.	Welke presidentsvrouw was jonger of gelijk aan 25 op de trouwdag en heeft meer dan 3 kinderen gekregen of was ouder dan 25 en heeft geen kinderen gekregen. 
-- SELECT * FROM Pres_mar WHERE (SP_age <= 25 AND Nr_child >= 3) OR (SP_age >= 25 AND Nr_child = 0);

-- 9.	Welke president en vrouw hebben geen kinderen uit een huwelijk gekregen en was het leeftijdsverschil tussen beide > 10 jaar. Toon in de uitvoer ook het verschil en geef deze kolom een mooie kolomnaam mee.
-- SELECT Pres_name, Sp_name, Pres_age, SP_age, nr_child, Pres_age - SP_age AS "leeftijd verschil" 
-- FROM Pres_mar 
-- WHERE Nr_child = 0 AND ABS(Pres_age - SP_age) > 1
-- ORDER BY 6 DESC

-- 10.	Welke presidenten, geboren in de periode 1800-1900 zijn voor hun 50e gestorven of na hun 80e verjaardag. Toon de Nederlandse kolomnamen: leeftijd_gestorven, geboortejaar en  president. (uitvoer is 3 records, gebruik haakjes!)
-- SELECT Pres_name AS president, Birth_Yr AS geboortejaar, Death_age AS leeftijd_gestorven FROM Pres WHERE Birth_Yr >= 1800 AND Birth_Yr <= 1900 AND (Death_age <= 50 or Death_age >= 80);

-- 11.	Welke presidenten zijn niet democratisch en komen uit Ohio of  ze zijn democratisch en komen uit New York of uit North Carolina. 
-- SELECT * FROM Pres WHERE (Party <> "Democratic" AND State_born = "Ohio") OR (Party = "Democratic" AND (State_born = "New York" OR State_born = "Carolina"));

-- 12.	Welke republikeinse of democratische presidenten hebben meer dan 4 jaar gediend, maar minder dan 12. President Washington mag niet mee doen in het lijstje.
-- SELECT * FROM Pres WHERE Party = "Democratic" AND Yrs_serv > 4 AND Yrs_serv < 12

-- 13.	Wat is het verschil in leeftijd tussen de president en zijn vrouw. Geef de uitkomst de kolomnaam “Verschil in leeftijd” mee. Sorteer de lijst op het verschil.
-- SELECT Pres_age - SP_age AS "Verschil in leeftijd" FROM Pres_mar

-- 14.	Welke president is meer dan of precies 2 keer zo oud als zijn vrouw op de trouwdag? Toon leeftijden, namen en het verschil.
-- SELECT Pres_age, SP_age, Pres_age - SP_age AS Difference_in_age FROM Pres_mar WHERE SP_age <= (Pres_age/2)

-- 15.	Welke staat heeft op de 2e positie de letter i
-- SELECT State_name FROM States WHERE State_name LIKE "_i%"

-- 16.	Welke staat heeft op de één na laatste positie de letter i?
-- SELECT State_name FROM States WHERE State_name LIKE "%i_"

-- 17.	Is er een staat die beide heeft ? 
-- SELECT State_name FROM States WHERE State_name LIKE "%i_" AND State_name LIKE "_i%"

-- 18.	Geef alle vastgelegde gegevens van die presidentshuwelijken waarbij de president of zijn vrouw op de huwelijksdag ouder was/waren dan 35 en die niet kinderloos bleven.
-- SELECT * FROM Pres_mar WHERE Pres_age >= 35 AND SP_age >= 35 AND Nr_child >= 1

-- 19.	Geef de top tien van de presidentouders met de meeste kinderen.
-- SELECT * FROM Pres_mar ORDER BY Nr_child DESC LIMIT 10

-- 20.	Welke staten brengen presidenten voort? Geen dubbele of lege velden in de uitvoer. 
-- SELECT DISTINCT State_born FROM Pres 
