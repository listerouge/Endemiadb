SET SQL_SAFE_UPDATES=0;
UPDATE endemiadb.occurence
SET Compilateur = REPLACE(Compilateur, 'Tanguy V.', 'Clark R., Tanguy V.')
Where NomTaxon like '%Mezoneuron%'