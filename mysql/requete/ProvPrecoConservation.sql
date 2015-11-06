SELECT Taxon_idTaxEndemia AS 'idTaxEndemia', concat(Genre,' ',Espece) AS 'Taxon', CodePreconisationConservation AS 'CodePreconisationConservationUICN', DescriptionPreconisationConservation, NotePreconisationConservationFR, DureePreconisationConservation FROM endemiadb.preconisationconservation
INNER JOIN jointpreconisationconservationevaluation
ON idPreconisationConservation = PreconisationConservation_idPreconisationConservation
INNER JOIN evaluationlisterouge
ON idEvaluationListeRouge = EvaluationListeRouge_idEvaluationListeRouge
INNER JOIN taxon
ON idTaxEndemia = Taxon_idTaxEndemia
WHERE Famille LIKE 'Dilleniaceae'