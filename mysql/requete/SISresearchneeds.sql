SELECT distinct
idEvaluationListeRouge AS 'internal_taxon_id', 
CodeRecherche AS 'Research.ResearchSubfield.ResearchLookup',
CategorieRechercheEN AS 'Research.ResearchSubfield.ResearchName' 
FROM endemiadb.preconisationrecherchestandard
INNER JOIN jointpreconisationrechercheevaluation
ON idRecherche = PreconisationRecherche_idRecherche
INNER JOIN evaluationlisterouge
ON idEvaluationListeRouge = EvaluationListeRouge_idEvaluationListeRouge
INNER JOIN codeiucnrecherche
ON CodeIUCN = CodeRecherche
WHERE AireEvaluation = 'Global' AND (DateEvaluation ='2015-07-23' OR DateEvaluation='2015-07-24') AND CategorieEvaluation != 'NE';