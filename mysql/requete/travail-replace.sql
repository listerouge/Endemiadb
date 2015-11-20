SET SQL_SAFE_UPDATES=0;
UPDATE endemiadb.occurence
SET NomTaxon = REPLACE(NomTaxon, 'Acropogon paagoumenensis', 'Acropogon paagoumenensis Morat & Chalopin')