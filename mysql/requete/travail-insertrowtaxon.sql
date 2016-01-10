INSERT INTO endemiadb.evaluationlisterouge (Taxon_NomScientifique)
SELECT NomScientifique
FROM taxon 
Where idTaxon between 451 and 452