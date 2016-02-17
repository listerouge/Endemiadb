#requete permettant de charger les AA et EOO calculés sour ArcGis
SET SQL_SAFE_UPDATES=0;-- premet de charger des données de la table eval sans affecter le reste 
CREATE TEMPORARY TABLE your_temp_table LIKE evaluationlisterouge;
LOAD DATA LOCAL INFILE 'C:/Users/Endemia/Documents/12 - GestionDonnees/table-Orchis/Orchi4EOOAOO.csv' 
INTO TABLE your_temp_table
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
(idEvaluationListeRouge,EOO,AOO); 

UPDATE evaluationlisterouge
INNER JOIN your_temp_table on your_temp_table.idEvaluationListeRouge = evaluationlisterouge.idEvaluationListeRouge
SET evaluationlisterouge.EOO = your_temp_table.EOO,evaluationlisterouge.AOO=your_temp_table.AOO;

DROP TEMPORARY TABLE your_temp_table