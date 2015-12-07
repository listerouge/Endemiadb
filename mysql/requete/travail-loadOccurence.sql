LOAD DATA LOCAL INFILE 'C:/Users/Endemia/Documents/12 - GestionDonnees/table-Pittos/jointEvalOccurence.csv' into table jointevaluationoccurence
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
#(@col1,@col2) set Occurence_idOccurence=@col1,EvaluationListeRouge_idEvaluationListeRouge=@col2 