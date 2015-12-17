SET SQL_SAFE_UPDATES=0;-- premet de charger uniquement les données GPS converties sous Circé sans affecter le reste , à faire après avoir charger les points de Occurenceorigine vers occurence
CREATE TEMPORARY TABLE your_temp_table LIKE occurence;

LOAD DATA INFILE 'C:/Users/Endemia/Documents/12 - GestionDonnees/table-PlerandraPodoCyrtandra/Plerandraretour1.csv'
INTO TABLE your_temp_table
FIELDS TERMINATED BY ','ENCLOSED BY '' LINES TERMINATED BY '\r\n'
(idOccurence,FiabiliteDonnee,CommentaireDonnee,UtilisationEvaluation); 

UPDATE occurence
INNER JOIN your_temp_table on your_temp_table.idOccurence = occurence.idOccurence
SET occurence.UtilisationEvaluation=your_temp_table.UtilisationEvaluation,
occurence.FiabiliteDonnee=your_temp_table.FiabiliteDonnee,
occurence.CommentaireDonnee=your_temp_table.CommentaireDonnee;

DROP TEMPORARY TABLE your_temp_table