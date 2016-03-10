SELECT idEvaluationListeRouge AS 'internal_taxon_id', 
CodePreconisationConservation AS 'ConservationActions.ConservationActionsSubfield.ConservationActionsLookup',
CategoriePreconisationEN AS 'ConservationActions.ConservationActionsSubfield.ConservationActionsName'
FROM endemiadb.preconisationconservationstandard
INNER JOIN jointpreconisationconservationevaluation
ON idPreconisationConservation = PreconisationConservation_idPreconisationConservation
INNER JOIN evaluationlisterouge
ON idEvaluationListeRouge = EvaluationListeRouge_idEvaluationListeRouge
INNER JOIN codeiucnpreconisation
ON CodeIUCN = CodePreconisationConservation
WHERE AireEvaluation = 'Global' AND (DateEvaluation ='2015-07-23' OR DateEvaluation='2015-07-24') AND CategorieEvaluation != 'NE';