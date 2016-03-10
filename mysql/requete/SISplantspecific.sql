SELECT idEvaluationListeRouge AS 'internal_taxon_id', DescriptionEspece AS 'PlantGrowthForms.PlantGrowthFormsSubfield.PlantGrowthFormsLookup' FROM taxon
INNER JOIN evaluationlisterouge
On NomScientifique = evaluationlisterouge.Taxon_NomScientifique
where AireEvaluation = 'Global' AND (DateEvaluation ='2015-07-23' OR DateEvaluation='2015-07-24') AND CategorieEvaluation != 'NE';