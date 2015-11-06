SELECT Taxon_idTaxEndemia AS 'idTaxEndemia',idTaxFlorical, concat(Genre,' ',Espece) AS 'Taxon', CodeRecherche AS 'CodePreconisationRechercheUICN', DescriptionRecherche, NoteRechercheFR, DureeRecherche FROM endemiadb.preconisationrecherche
INNER JOIN jointpreconisationrechercheevaluation
ON idRecherche = PreconisationRecherche_idRecherche
INNER JOIN evaluationlisterouge
ON idEvaluationListeRouge = EvaluationListeRouge_idEvaluationListeRouge
INNER JOIN taxon
ON idTaxEndemia = Taxon_idTaxEndemia
WHERE Famille LIKE 'Dilleniaceae'