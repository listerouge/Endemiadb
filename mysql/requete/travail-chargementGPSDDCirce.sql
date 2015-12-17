SET SQL_SAFE_UPDATES=0;-- premet de charger uniquement les données GPS converties sous Circé sans affecter le reste , à faire après avoir charger les points de Occurenceorigine vers occurence
CREATE TEMPORARY TABLE your_temp_table LIKE occurence;

LOAD DATA INFILE 'C:/Users/Endemia/Documents/12 - GestionDonnees/table-PlerandraPodoCyrtandra/Plerandraretour2.csv'
INTO TABLE your_temp_table
FIELDS TERMINATED BY ','
(idOccurence,SourceDonnee,Media);#,FiabiliteDonnee,CommentaireDonnee,UtilisationEvaluation); 

UPDATE occurence
INNER JOIN your_temp_table on your_temp_table.idOccurence = occurence.idOccurence
SET occurence.SourceDonnee = your_temp_table.SourceDonnee,
occurence.Media=your_temp_table.Media;
#occurence.UtlisationEvaluation=your_temp_table.UtlisationEvaluation,
#occurence.FiabiliteDonnee=your_temp_table.FiabiliteDonnee,
#occurence.CommentaireDonnee=your_temp_table.CommentaireDonnee;

DROP TEMPORARY TABLE your_temp_table