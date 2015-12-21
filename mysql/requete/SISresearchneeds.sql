SELECT idEvaluationListeRouge AS 'internal_taxon_id', CodeRecherche AS 'Research.ResearchSubfield.ResearchLookup',CategorieRechercheEN AS 'Research.ResearchSubfield.ResearchName',NoteRechercheEN AS 'Research.ResearchSubfield.note' FROM endemiadb.preconisationrecherche
INNER JOIN jointpreconisationrechercheevaluation
ON idRecherche = PreconisationRecherche_idRecherche
INNER JOIN evaluationlisterouge
ON idEvaluationListeRouge = EvaluationListeRouge_idEvaluationListeRouge
INNER JOIN codeiucn
ON CodeIUCN = CodeRecherche
where Taxon_NomScientifique like '%Hibbertia%'