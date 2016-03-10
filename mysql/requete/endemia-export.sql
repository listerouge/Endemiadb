/*requête permettant de charger les données sous Endemia*/
SELECT NomScientifique AS'Nom taxon', 
	IFNULL(Latitude, 'Null'), 
	IFNULL(Longitude, 'Null'),
	IFNULL(FiabiliteDonnee, 'Null')  AS'Type_localite', 
	IFNULL(idTaxEndemia , 'Null')AS'Id_taxon_endemia', 
	IFNULL(idTaxFlorical, 'Null') AS'Id_taxon_florical', 
	replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(Station,'é','e'),'è','e'),'ê','e'),"l'",'l '),"u'",'u '),'î','i'),'ö','o'),'ï','i'),'à','a'),'"',' '),'â','a'),'ä','a'),'ü','u'),'ë','e'),'ç','c') AS 'Station',
	IFNULL(AnneeObservation, 'Null') AS 'Date observation', 
	replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(Observateur,'é','e'),'è','e'),'ê','e'),"l'",'l '),"u'",'u '),'î','i'),'ö','o'),'ï','i'),'à','a'),'"',' '),'â','a'),'ä','a'),'ü','u'),'ë','e'),'ç','c') AS 'Observateur',
	replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(SourceDonnee,'é','e'),'è','e'),'ê','e'),"l'",'l '),"u'",'u '),'î','i'),'ö','o'),'ï','i'),'à','a'),'ä','a'),'"',' '),'â','a'),'ü','u'),'ë','e'),'ç','c') AS 'Source Donnee', 
	IFNULL(Media,'Null'),
	IFNULL(FiabiliteDonnee,'Null') AS 'Statut', 
	IFNULL(NumeroRecolte,'Null') AS'Numero de recolte', 
	IFNULL(NumeroPart,'Null') AS'Numero de la part', 
	IFNULL(occurrence.AltitudeMinimale,'Null') AS'Altitude min', 
	/* Remplissage en Null de colonne attendu par Endemia*/
	'Null' AS 'Gps_source', 
	'Null' AS 'precis.geoloc', 
	'Null' AS 'Remarque sur la fiabilite de la donnee', 
	replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(FormationVegetale,'é','e'),'è','e'),'ê','e'),"l'",'l '),"u'",'u '),'î','i'),'ö','o'),'ï','i'),'à','a'),'"',' '),'â','a'),'ä','a'),'ü','u'),'ë','e'),'ç','c') AS 'Formation vegetale', 
	replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(Substrat,'é','e'),'è','e'),'ê','e'),"l'",'l '),"u'",'u '),'î','i'),'ö','o'),'ï','i'),'à','a'),'"',' '),'â','a'),'ä','a'),'ü','u'),'ë','e'),'ç','c') AS 'Substrat', 
	replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(AutreInfoTaxon,'é','e'),'è','e'),'ê','e'),"l'",'l '),"u'",'u '),'î','i'),'ö','o'),'ï','i'),'à','a'),'"',' '),'â','a'),'ä','a'),'ü','u'),'ë','e'),'ç','c') AS'Autres infos relatives au taxon'

INTO OUTFILE 'C:/Users/Endemia/Documents/12 - GestionDonnees/export-Endemia/test.csv'
  FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"' 
  LINES TERMINATED BY '\n'

FROM endemiadb.occurrence
join jointevaluationoccurrence
on idOccurence=jointevaluationoccurrence.Occurrence_idOccurrence
join evaluationlisterouge
on idEvaluationListeRouge=jointevaluationoccurrence.EvaluationListeRouge_idEvaluationListeRouge
join taxon
on NomScientifique=evaluationlisterouge.Taxon_NomScientifique
WHERE 
DateEvaluation='2016/02/29' and FiabiliteDonnee ='fiable'
ORDER BY NomScientifique;
/*possibilité de filtrer également avec l'utilisation évaluation après atelier (pour ne charger que les 'ok eval rla') et plus tard quand développement web bien avancé faire filtre sur affichage public = 1.*/