SET SQL_SAFE_UPDATES=0;-- premet de relier les occurences utilisées pour chaque évaluation
CREATE TEMPORARY TABLE your_temp_table LIKE jointevaluationoccurence;

INSERT INTO  your_temp_table (Occurence_idOccurence,EvaluationListeRouge_idEvaluationListeRouge) 
SELECT (idOccurence)
FROM (
	SELECT idEvaluation
	FROM evaluationlisterouge
	join evaluationlisterouge
	on evaluationlisterouge.taxon_NomScientifique=NomTaxon
    ) occurence 
Where NomTaxon like '%Pittosporum%'





#FIELDS TERMINATED BY ','
#(idOccurence, Latitude, Longitude); 

#UPDATE occurence
#INNER JOIN your_temp_table on your_temp_table.idOccurence = occurence.idOccurence
#SET occurence.Latitude = your_temp_table.Latitude,occurence.Longitude=your_temp_table.Longitude;

#DROP TEMPORARY TABLE your_temp_table