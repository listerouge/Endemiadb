SELECT idEvaluationListeRouge AS 'internal_taxon_id', CodeHabitat AS 'GeneralHabitats.GeneralHabitatsSubfield.GeneralHabitatsLookup', HabitatAdequation AS 'GeneralHabitats.GeneralHabitatsSubfield.suitability' FROM endemiadb.habitat
INNER JOIN jointhabitatevaluation
ON idHabitat=jointhabitatevaluation.Habitat_idHabitat
INNER JOIN evaluationlisterouge
On idEvaluationListeRouge = jointhabitatevaluation.EvaluationListeRouge_idEvaluationListeRouge
where Taxon_NomScientifique like '%Hibbertia%'