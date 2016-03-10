SELECT idEvaluationListeRouge AS 'internal_taxon_id',idExpert AS 'user_id', NomExpert AS 'lastName',PrenomExpert AS 'firstName',EmailExpert AS 'email',RoleExpert AS 'credit_type', OrdreExpert AS 'Order' FROM endemiadb.expert
INNER JOIN jointexpertevaluation
ON idExpert = Expert_idExpert
INNER JOIN evaluationlisterouge
ON idEvaluationListeRouge = EvaluationListeRouge_idEvaluationListeRouge
WHERE AireEvaluation = 'Global' AND (DateEvaluation ='2015-07-23' OR DateEvaluation='2015-07-24') AND CategorieEvaluation != 'NE';