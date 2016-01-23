SELECT NomScientifique AS'Nom taxon', Latitude, Longitude, FiabiliteDonnee AS'Type_localite', idTaxEndemia AS'Id_taxon_endemia', idTaxFlorical AS'Id_taxon_florical', replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(Station,'�','e'),'�','e'),'�','e'),"l'",'l '),"u'",'u '),'�','i'),'�','o'),'�','i'),'�','a'),'"',' '),'�','a'),'�','a'),'�','u'),'�','e'),'�','c') AS 'Station',
 AnneeObservation AS 'Date observation', 
 replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(Observateur,'�','e'),'�','e'),'�','e'),"l'",'l '),"u'",'u '),'�','i'),'�','o'),'�','i'),'�','a'),'"',' '),'�','a'),'�','a'),'�','u'),'�','e'),'�','c') AS Observateur,
 replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(SourceDonnee,'�','e'),'�','e'),'�','e'),"l'",'l '),"u'",'u '),'�','i'),'�','o'),'�','i'),'�','a'),'�','a'),'"',' '),'�','a'),'�','u'),'�','e'),'�','c') AS 'Source Donnee', Media, FiabiliteDonnee AS 'Statut', NumeroRecolte AS'Numero de recolte', NumeroPart AS'Numero de la part', occurence.AltitudeMinimale AS'Altitude min', NULL AS'Gps_source', NULL As'precis.geoloc', NULL AS 'Remarque sur la fiabilite de la donnee', replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(FormationVegetale,'�','e'),'�','e'),'�','e'),"l'",'l '),"u'",'u '),'�','i'),'�','o'),'�','i'),'�','a'),'"',' '),'�','a'),'�','a'),'�','u'),'�','e'),'�','c') AS 'Formation vegetale', replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(Substrat,'�','e'),'�','e'),'�','e'),"l'",'l '),"u'",'u '),'�','i'),'�','o'),'�','i'),'�','a'),'"',' '),'�','a'),'�','a'),'�','u'),'�','e'),'�','c') AS 'Substrat', replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(AutreInfoTaxon,'�','e'),'�','e'),'�','e'),"l'",'l '),"u'",'u '),'�','i'),'�','o'),'�','i'),'�','a'),'"',' '),'�','a'),'�','a'),'�','u'),'�','e'),'�','c') AS'Autres infos relatives au taxon'
INTO OUTFILE 'C:\Users\Endemia\Desktop\Export_Endemia.csv'
  FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
  LINES TERMINATED BY '\n'

FROM endemiadb.occurence
join jointevaluationoccurence
 on idOccurence=jointevaluationoccurence.Occurence_idOccurence
join evaluationlisterouge
on idEvaluationListeRouge=jointevaluationoccurence.EvaluationListeRouge_idEvaluationListeRouge
join taxon
on NomScientifique=evaluationlisterouge.Taxon_NomScientifique

WHERE 
DateEvaluation='2016/02/18'

#and FiabiliteDonnee ='fiable'

ORDER BY NomScientifique;