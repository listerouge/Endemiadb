SELECT idEvaluationListeRouge AS 'internal_taxon_id', DescriptionEspece AS 'PlantGrowthForms.PlantGrowthFormsSubfield.PlantGrowthFormsLookup' FROM taxon
INNER JOIN evaluationlisterouge
On NomScientifique = evaluationlisterouge.Taxon_NomScientifique
WHERE Taxon_NomScientifique like '%Hibbertia%'