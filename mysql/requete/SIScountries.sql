SELECT idEvaluationListeRouge AS 'internal_taxon_id', PaysOccurenceCode AS 'countryoccurrence.countryoccurrencesubfield.countryoccurrencelookup',Presence AS 'countryoccurrence.countryoccurrencesubfield.presence',Origine AS 'countryoccurrence.countryoccurrencesubfield.origin' FROM endemiadb.airegeographique
INNER JOIN jointairegeographiqueevaluation
ON idAireGeographique=AireGeographique_idAireGeographique
INNER JOIN evaluationlisterouge
On idEvaluationListeRouge = jointairegeographiqueevaluation.EvaluationListeRouge_idEvaluationListeRouge
WHERE AireEvaluation = 'Global' AND (DateEvaluation ='2015-07-23' OR DateEvaluation='2015-07-24') AND CategorieEvaluation != 'NE';
