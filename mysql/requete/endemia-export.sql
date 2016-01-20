SELECT NomScientifique AS'Nom taxon', Latitude, Longitude, FiabiliteDonnee AS'Type_localite', idTaxEndemia AS'Id_taxon_endemia', idTaxFlorical AS'Id_taxon_florical', replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(Station,'é','e'),'è','e'),'ê','e'),"l'",'l '),"u'",'u '),'î','i'),'ö','o'),'ï','i'),'à','a'),'"',' '),'â','a'),'ä','a'),'ü','u'),'ë','e'),'ç','c') AS 'Station',
 AnneeObservation AS 'Date observation', 
 replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(Observateur,'é','e'),'è','e'),'ê','e'),"l'",'l '),"u'",'u '),'î','i'),'ö','o'),'ï','i'),'à','a'),'"',' '),'â','a'),'ä','a'),'ü','u'),'ë','e'),'ç','c') AS Observateur,
 replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(SourceDonnee,'é','e'),'è','e'),'ê','e'),"l'",'l '),"u'",'u '),'î','i'),'ö','o'),'ï','i'),'à','a'),'ä','a'),'"',' '),'â','a'),'ü','u'),'ë','e'),'ç','c') AS 'Source Donnee', Media, FiabiliteDonnee AS 'Statut', NumeroRecolte AS'Numero de recolte', NumeroPart AS'Numero de la part', occurence.AltitudeMinimale AS'Altitude min', NULL AS'Gps_source', NULL As'precis.geoloc', NULL AS 'Remarque sur la fiabilite de la donnee', replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(FormationVegetale,'é','e'),'è','e'),'ê','e'),"l'",'l '),"u'",'u '),'î','i'),'ö','o'),'ï','i'),'à','a'),'"',' '),'â','a'),'ä','a'),'ü','u'),'ë','e'),'ç','c') AS 'Formation vegetale', replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(Substrat,'é','e'),'è','e'),'ê','e'),"l'",'l '),"u'",'u '),'î','i'),'ö','o'),'ï','i'),'à','a'),'"',' '),'â','a'),'ä','a'),'ü','u'),'ë','e'),'ç','c') AS 'Substrat', replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(AutreInfoTaxon,'é','e'),'è','e'),'ê','e'),"l'",'l '),"u'",'u '),'î','i'),'ö','o'),'ï','i'),'à','a'),'"',' '),'â','a'),'ä','a'),'ü','u'),'ë','e'),'ç','c') AS'Autres infos relatives au taxon'
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
ORDER BY NomScientifique