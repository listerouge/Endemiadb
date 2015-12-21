SELECT idEvaluationListeRouge AS 'internal_taxon_id', concat(Genre,' ',Espece) AS 'Binomial', if(InfraType='ssp.',InfraNom,null) AS'Subspecies', Presence AS 'Presence', Origine AS 'Origin', Saisonnalite AS 'Seasonal', Compilateur AS 'Compiler', CompilationAnnee AS 'Year', Credit AS 'Citation', AnneeObservation AS 'Event_Year', Latitude AS 'Dec_Lat', Longitude AS 'Dec_Long', ReferentielSpatial AS 'SpatialRef', DonneeSensible AS 'Data_Sens', RaisonDonneeSensible AS 'Sens_Comm' FROM endemiadb.occurence
INNER JOIN jointevaluationoccurence
ON occurence.idOccurence=Occurence_idOccurence
INNER JOIN evaluationlisterouge
On idEvaluationListeRouge=EvaluationListeRouge_idEvaluationListeRouge
INNER JOIN taxon
On NomScientifique = evaluationlisterouge.Taxon_NomScientifique
WHERE FiabiliteDonnee = 'fiable' AND idTaxEndemia != '321' AND idTaxEndemia IS NOT NULL