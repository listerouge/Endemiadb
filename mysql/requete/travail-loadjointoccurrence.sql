#requete permettant de charger la table de jointure evaloccurrence qui permet de faire le lien entre les évaluations et le jeu de données utilisé pour l'évaluation.

LOAD DATA LOCAL INFILE 'C:/Users/Endemia/Documents/12 - GestionDonnees/table-Orchis/jointOrchis.csv' into table jointevaluationoccurrence
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
#Ignore 1 lines si table avec en-tête
(@col1,@col2)
set  Occurrence_idOccurrence=@col1,EvaluationListeRouge_idEvaluationListeRouge=@col2