SELECT idEvaluationListeRouge AS 'internal_taxon_id',idExpert AS 'user_id', NomExpert AS 'lastName',PrenomExpert AS 'firstName',EmailExpert AS 'email',RoleExpert AS 'credit_type', OrdreExpert AS 'Order' FROM endemiadb.expert
INNER JOIN jointexpertevaluation
ON idExpert = Expert_idExpert
INNER JOIN evaluationlisterouge
ON idEvaluationListeRouge = EvaluationListeRouge_idEvaluationListeRouge
where Taxon_NomScientifique like '%Hibbertia%'