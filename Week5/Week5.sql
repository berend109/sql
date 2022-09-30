-- 1)	Geef in een overzicht alle persoonsgegevens van de student Sven Kramer
-- SELECT * FROM Studenten 
-- WHERE Studentnaam LIKE 'Kramer%';
-- 2)	Geef in een overzicht alle behaalde rsultaten van de student Sven Kramer (via zijn studentnummer) 
-- SELECT Vaknaam, Cijfer FROM Cijfers WHERE Studentnummer = (SELECT Studentnummer FROM Studenten WHERE Studentnaam LIKE 'Kramer%')
-- 3)	Welke vakken zijn er (geen dubbele in uitvoer) ?
-- SELECT DISTINCT Vaknaam FROM Cijfers;
-- 4)	Wat is het hoogste cijfer voor het vak SQL?
-- SELECT MAX(Cijfer) FROM Cijfers;
-- 5)	Wat is het laagste cijfer ooit gehaald  (alle vakken), behalve voor Engels?
-- SELECT MIN(Cijfer) FROM Cijfers;
-- 6)	Hoeveel studenten hebben tentamen gedaan in Programmeren?
-- SELECT Count(Vaknaam) FROM Cijfers WHERE Vaknaam = "Programmeren";
-- 7)	Wat is het gemiddelde cijfer voor Databases. Gebruik hiervoor 1 rekenkundige functie en rond het resultaat af met ROUND(<af te ronden waarde>, 2) op 2 decimalen. Geef een alias mee.
-- SELECT * FROM Cijfers;
-- SELECT Round (Avg (Cijfer), 2) As "Gimiddelde cijfer Databases" FROM Cijfers;
-- 8)	Wat is het gemiddelde cijfer voor Databases. Bereken het cijfer in de query met 2 andere rekenkundige functies en geef een Alias mee.

-- ?? Klopt dit ??
-- SELECT SUM(Cijfer) / COUNT(Cijfer) AS "Gemiddelde" FROM Cijfers;
-- 9)	Wie is de laatste (ingevoerde) student in de studententabel en wie de eerste? 
-- SELECT Studentnaam FROM Studenten limit 1 -- eerste resultaat
-- SELECT Studentnaam from Studenten ORDER BY Studentnummer DESC limit 1;

-- 10)	Hoeveel studenten hebben een voornaam die begint met een “M”? 
-- SELECT COUNT(*) FROM Studenten WHERE Studentnaam LIKE "M%";

-- 11)	Welke student heeft in zijn/haar achternaam op de 3e plek de letter “r” ?
-- SELECT * FROM Studenten WHERE Studentnaam LIKE "__r%";

-- 12)	 Wat is het gemiddelde geboortejaar ? Gebruik Year(<datumveld>)
-- SELECT AVG(YEAR(Geboortedatum)) FROM Studenten

-- -- GROUP BY -vragen

-- 13)	Hoeveel vrouwen en hoeveel mannen zijn er in de database ?
SELECT COUNT(Geslacht) FROM Studenten GROUP BY Geslacht

-- 14)	Wat is het gemiddelde cijfer per vak? Sorteer de uitvoer op het gemiddelde.

-- 15)	Hoeveel studenten zitten er per opleiding? Sorteer aflopend op aantal.

-- 16)	Hoeveel studenten zitten er in een klas van een studierichting? 

-- 17)	Hoeveel studenten hebben er per vak tentamen gedaan? 

-- 18)	Wat is het gemiddelde cijfer per geslacht (M/V). Sorteer op gemiddelden. Geef gemiddelde een duidelijke alias mee.

-- 19)	Wat is de verdeling per geboortejaar? Oftewel hoeveel studenten zijn geboren in een bepaald geboortejaar? Geef het aantal een duidelijke alias mee.

-- 20)	Wat is het hoogste gehaalde cijfer per student? Cijfers lager dan een 6 niet tonen in dit overzicht. Sorteer aflopend op hoogste cijfer. 

-- 21)	Wat is het laagste cijfer per vak? Cijfers hoger dan een 6 niet tonen in de uitvoer. Sorteer de lijst op vaknaam.

-- 22)	Hoeveel studenten hebben een 1, 2, 3, 4, 5..10 gehaald? Geef per cijfer aan hoeveel studenten dit cijfer gehaald hebben. Het vak Recht doet niet mee in dit overzicht. Aantallen van precies 4 niet tonen in de uitvoer. Sorteer op het cijfer.

-- 23)	Hoeveel studenten worden er per maand geboren? Toon de maand en het aantal studenten.
