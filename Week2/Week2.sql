-- 1.	In welke staat is president R(onald) Reagan geboren en in welk jaar? Let op de schrijfwijze van de naam!
-- SELECT State_born, Birth_Yr
-- FROM Pres
-- WHERE Pres_name = "Reagan R"
-- 2.	Geef alle geregistreerde gegevens over de huwelijken van president Reagan.
-- SELECT *
-- FROM Pres_mar
-- WHERE Pres_name = "Reagan R"
-- 3.	In welk(e) ja(a)r(en) werd Reagan president?
-- SELECT El_year
-- FROM El_cand
-- WHERE WL_indic = "w" and Cand_name = "Reagan R"
-- 4.	Welke staten hebben de Union (de United States of America) opgericht?
-- SELECT State_name
-- FROM States
-- 5.	Geef een lijst van alle door presidenten beoefende en geregistreerde hobby's. Zorg dat deze lijst aflopend gesorteerd is.
-- SELECT * 
-- FROM Pres_hob
-- ORDER BY Hobby ASC -- ?? DESC ??
-- 6.	Welke personen zijn ooit vice-president geweest?
-- DISTINCT om geen dubbele namen in de output te krijgen. 
-- mogelijke performance voordeel ??
-- SELECT DISTINCT Vp_name
-- FROM Adm_prvp
-- 7.	Welke presidentshuwelijken zijn kinderloos gebleven? Toon ook het aantal kinderen.
-- SELECT * 
-- FROM Pres_mar
-- WHERE Nr_child = 0;

-- SELECT SUM(Nr_child)
-- FROM Pres_mar
-- 8.	Welke presidenten hielden van paardrijden (Riding)? Toon ook de hobby!
-- SELECT * 
-- FROM Pres_hob
-- WHERE Hobby = "Riding"
-- 9.	Welke presidenten houden van lezen (reading) of vissen (fishing)?
-- SELECT * 
-- FROM Pres_hob
-- WHERE Hobby = "reading" OR Hobby = "fishing"
-- ORDER BY Hobby ASC
-- 10.	In welk jaar kwam Hawaii bij de United States of America?
-- SELECT Year_enter
-- FROM States
-- WHERE State_name = "hawaii"
-- 11.	Welke presidenten zijn ouder dan 85 geworden? Geef de naam, leeftijd en geboortejaar van de president.
-- SELECT Death_age
-- FROM Pres
-- Where Death_age > 84
-- 12.	Van welke presidenten is de geboortestaat niet bekend? Toon naam en geboortestaat. 
-- SELECT Pres_name
-- FROM Pres
-- WHERE State_born IS NULL
-- 13.	Hoeveel kinderen heeft president Tyler uit  zijn 1e huwelijk?
-- SELECT Nr_child
-- FROM Pres_mar
-- WHERE Pres_name = "Tyler j"
-- ORDER BY Mar_year limit 1
-- 14.	Geef de verkiezingsgegevens, geordend op verkiezingsjaar, van de winnaars (wl_indic) van de presidentsverkiezingen die in vorige eeuw (de 20e) zijn gehouden.
-- SELECT *
-- FROM El_cand
-- WHERE Wl_indic = "w" AND El_year > 1899 AND El_year < 2000
-- ORDER by El_year DESC
-- 15.	Geef de naam,leeftijd, partij en het aantal dienstjaren van die presidenten die reeds zijn overleden, niet republikeins waren en minstens 70 jaar oud zijn geworden. 
-- SELECT Pres_name, Death_age AS "Age", Party, Yrs_serv
-- FROM Pres
-- WHERE Death_age > 69 AND Party <> "Republican"
-- 16.	In welke regeringen heeft een Roosevelt zitting gehad (als president of als vice-president)? 
SELECT *
FROM Pres
WHERE Pres_name LIKE "Roosevelt%";

SELECT *
FROM Adm_prvp
WHERE Pres_name LIKE "Roosevelt%" OR Vp_name LIKE "Roosevelt%";
-- 17.	Welke kandidaten bij presidentsverkiezingen hebben 0 stemmen gehaald ? 

-- 18.	Welke verliezers van de presidentsverkiezingen hebben tussen 150 en 250 stemmen behaald ?  Toon naam en aantal stemmen en WL-indic (winn-loss-indicator)

-- 19.	Welke presidenten zijn geboren in een van de zuidelijke staten (Georgia, South Carolina, Alabama, Mississippi, Louisiana, Texas, Arkansas, North Carolina, Tennessee, Virginia of Florida)? Toon presidentnaam en staatnaam en sorteer op presidentnaam.

-- 20.	Welke presidenten zijn niet van de republikeinse partij? Toon presidentnaam en partij en sorteer op partijnaam aflopend en dan op presidentnaam oplopend.

-- 21.	Zijn er huwelijken met 5 of meer kinderen of maar met 1 kind? Laat zien welk huwelijk en hoeveel kinderen. Sorteer Oplopend.

-- 22.	Zijn er presidenten die gestorven zijn voor hun zestigste levensjaar?