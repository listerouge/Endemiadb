SELECT idEvaluationListeRouge AS 'internal_taxon_id', PaysOccurence AS 'countryoccurrence.countryoccurrencesubfield.countryoccurrencelookup',Presence AS 'countryoccurrence.countryoccurrencesubfield.presence',Origine AS 'countryoccurrence.countryoccurrencesubfield.origin' FROM endemiadb.airegeographique
INNER JOIN jointairegeographiqueevaluation
ON idAireGeographique=AireGeographique_idAireGeographique
INNER JOIN evaluationlisterouge
On idEvaluationListeRouge = jointairegeographiqueevaluation.EvaluationListeRouge_idEvaluationListeRouge
WHERE Taxon_NomScientifique like '%Hibbertia%'
