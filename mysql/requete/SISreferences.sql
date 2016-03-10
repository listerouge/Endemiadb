SELECT idEvaluationListeRouge AS 'internal_taxon_id', TypeSource AS 'type', TitreSource AS 'title', Auteur AS 'author', AnneePublication AS 'year', AnneeConsultation AS'access_date', LieuMaisonEdition AS 'place_published', MaisonEdition AS 'Publisher', Volume, Pages AS 'pages', Edition AS 'edition', ISSNISBN AS 'isbnissn', Url AS 'url', TypeSoumission AS 'submission_type', TypeBibliographie AS 'Reference_type' FROM endemiadb.sourcebibliographique
INNER JOIN jointsourcebibliographiqueevaluation
ON idSourceBibliographique = SourceBibliographique_idSourceBibliographique
INNER JOIN evaluationlisterouge
ON idEvaluationListeRouge = EvaluationListeRouge_idEvaluationListeRouge
where AireEvaluation = 'Global' AND (DateEvaluation ='2015-07-23' OR DateEvaluation='2015-07-24') AND CategorieEvaluation != 'NE';