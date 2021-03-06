SELECT idEvaluationListeRouge AS 'internal_taxon_id', Regne AS 'kingdom', Phylum AS 'phylum', ClasseBota AS 'classname', Ordre AS 'ordername', Famille AS 'family', Genre AS 'genus', Espece AS 'species', InfraType AS 'infratype', InfraNom AS 'infra_name', AutoriteTaxonomiqueEspece AS'taxonomicauthority', AutoriteTaxonomiqueInfra AS 'infra_authority ' FROM taxon
INNER JOIN evaluationlisterouge
On NomScientifique=Taxon_NomScientifique
WHERE AireEvaluation = 'Global' AND (DateEvaluation ='2015-07-23' OR DateEvaluation='2015-07-24') AND CategorieEvaluation != 'NE';
