SET SQL_SAFE_UPDATES=0;-- premet de charger des données de la table eval sans affecter le reste 
CREATE TEMPORARY TABLE your_temp_table LIKE evaluationlisterouge;
LOAD DATA LOCAL INFILE 'C:/Users/Endemia/Documents/12 - GestionDonnees/Table-PlerandraPodoCyrtandra/PlepodoRationaleok.csv'
INTO TABLE your_temp_table
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
(Taxon_NomScientifique,ConservationRecitEN,HabitatEcologieRecitEN,PopulationRecitEN,AireGeographiqueRecitEN,ArgumentaireEvaluationEN,MenaceRecitEN); 

UPDATE evaluationlisterouge
INNER JOIN your_temp_table on your_temp_table.Taxon_NomScientifique = evaluationlisterouge.Taxon_NomScientifique
SET evaluationlisterouge.ArgumentaireEvaluationEN = your_temp_table.ArgumentaireEvaluationEN,evaluationlisterouge.ConservationRecitEN=your_temp_table.ConservationRecitEN,evaluationlisterouge.HabitatEcologieRecitEN=your_temp_table.HabitatEcologieRecitEN,evaluationlisterouge.PopulationRecitEN=your_temp_table.PopulationRecitEN,evaluationlisterouge.AireGeographiqueRecitEN=your_temp_table.AireGeographiqueRecitEN,evaluationlisterouge.MenaceRecitEN=your_temp_table.MenaceRecitEN;

DROP TEMPORARY TABLE your_temp_table