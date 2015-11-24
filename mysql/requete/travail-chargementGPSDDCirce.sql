SET SQL_SAFE_UPDATES=0;-- premet de charger uniquement les données GPS converties sous Circé sans affecter le reste , à faire après avoir charger les points de Occurenceorigine vers occurence
CREATE TEMPORARY TABLE your_temp_table LIKE occurence;

LOAD DATA INFILE 'C:/Users/Endemia/Documents/12 - GestionDonnees/table-acropogon/updateoccurence.csv'
INTO TABLE your_temp_table
FIELDS TERMINATED BY ','
(idOccurence, Latitude, Longitude); 

UPDATE occurence
INNER JOIN your_temp_table on your_temp_table.idOccurence = occurence.idOccurence
SET occurence.Latitude = your_temp_table.Latitude,occurence.Longitude=your_temp_table.Longitude;

DROP TEMPORARY TABLE your_temp_table