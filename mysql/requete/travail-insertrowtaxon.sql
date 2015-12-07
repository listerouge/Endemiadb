INSERT INTO endemiadb.evaluationlisterouge (Taxon_NomScientifique)
SELECT NomScientifique
FROM taxon 
Where NomScientifique like '%Pittosporum%'