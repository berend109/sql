-- 1.	Welke staten kwamen bij de Unie in 1776, 1791 en 1792? Toon de staat en het jaar, gesorteerd op staat.
-- SELECT Year_enter as "Jaar" FROM States WHERE Year_enter IN (1776, 1791, 1792) ORDER BY Year_enter;

-- 2.	Toon alle hobby’s van presidenten (toon president en hobby) maar niet de hobby Fishing.
-- SELECT DISTINCT Hobby FROM Pres_hob WHERE Hobby <> "Fishing";

-- 3.	Toon de presidenten (toon president en hobby) die Golf of Riding hebben als hobby.
-- SELECT * FROM Pres_hob WHERE Hobby IN ("Golf", "Riding");

-- 4.	Toon de presidenten wiens achternaam met een R begint.


-- 5.	Toon de presidenten wiens achternaam op “ing” eindigt.
-- 6.	Zijn er presidenten waarbij de achternaam en hun hobby allebei met een “R” beginnen?
-- 7.	Wat is het sterftejaar van de presidenten? Toon geboortejaar en de leeftijd en deze opgeteld. Geef de kolom de juiste naam.
-- 8.	Welke presidentsvrouw was jonger of gelijk aan 25 op de trouwdag en heeft meer dan 3 kinderen gekregen of was ouder dan 25 en heeft geen kinderen gekregen. 
-- 9.	Welke president en vrouw hebben geen kinderen uit een huwelijk gekregen en was het leeftijdsverschil tussen beide > 10 jaar. Toon in de uitvoer ook het verschil en geef deze kolom een mooie kolomnaam mee.
-- 10.	Welke presidenten, geboren in de periode 1800-1900 zijn voor hun 50e gestorven of na hun 80e verjaardag. Toon de Nederlandse kolomnamen: leeftijd_gestorven, geboortejaar en  president. (uitvoer is 3 records, gebruik haakjes!)
-- 11.	Welke presidenten zijn niet democratisch en komen uit Ohio of  ze zijn democratisch en komen uit New York of uit North Carolina. 
-- 12.	Welke republikeinse of democratische presidenten hebben meer dan 4 jaar gediend, maar minder dan 12. President Washington mag niet mee doen in het lijstje.
-- 13.	Wat is het verschil in leeftijd tussen de president en zijn vrouw. Geef de uitkomst de kolomnaam “Verschil in leeftijd” mee. Sorteer de lijst op het verschil. 
-- 14.	Welke president is meer dan of precies 2 keer zo oud als zijn vrouw op de trouwdag? Toon leeftijden, namen en het verschil.
-- 15.	Welke staat heeft op de 2e positie de letter i?
-- 16.	Welke staat heeft op de één na laatste positie de letter i?
-- 17.	Is er een staat die beide heeft ? 
-- 18.	Geef alle vastgelegde gegevens van die presidentshuwelijken waarbij de president of zijn vrouw op de huwelijksdag ouder was/waren dan 35 en die niet kinderloos bleven.
-- 19.	Geef de top tien van de presidentouders met de meeste kinderen.
-- 20.	Welke staten brengen presidenten voort? Geen dubbele of lege velden in de uitvoer. 
