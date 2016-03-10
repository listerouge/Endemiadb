SELECT distinct idEvaluationListeRouge AS 'internal_taxon_id', CodeHabitat AS 'GeneralHabitats.GeneralHabitatsSubfield.GeneralHabitatsLookup', HabitatAdequation AS 'GeneralHabitats.GeneralHabitatsSubfield.suitability' 
FROM endemiadb.habitatstandard
INNER JOIN jointhabitatevaluation
ON idHabitat=jointhabitatevaluation.Habitat_idHabitat
INNER JOIN evaluationlisterouge
On idEvaluationListeRouge = jointhabitatevaluation.EvaluationListeRouge_idEvaluationListeRouge
where AireEvaluation = 'Global' AND (DateEvaluation ='2015-07-23' OR DateEvaluation='2015-07-24') AND CategorieEvaluation != 'NE';