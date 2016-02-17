#requête pour Arcgis
SELECT idEvaluationListeRouge, NomScientifique AS'Nom taxon', Latitude, Longitude
FROM endemiadb.occurrence
join jointevaluationoccurrence
on idOccurence=jointevaluationoccurrence.Occurrence_idOccurrence
join evaluationlisterouge
on idEvaluationListeRouge=jointevaluationoccurrence.EvaluationListeRouge_idEvaluationListeRouge
join taxon
on NomScientifique=evaluationlisterouge.Taxon_NomScientifique
WHERE 
DateEvaluation='2016/02/18' and FiabiliteDonnee ='fiable' and Latitude is not null 
ORDER BY NomScientifique
#attention après avoir enreigistré le document en .csv, convertir la colonne idEvaluation en texte et enrigistrer le tout sous excel en .xlsx pour qu ele format de la colonne soit conservé.