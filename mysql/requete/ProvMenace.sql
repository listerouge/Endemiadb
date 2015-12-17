SELECT idTaxEndemia AS 'Identifiant du taxon selon Endemia',idTaxFlorical AS'Identifiant du taxon selon Florical', Taxon_NomScientifique AS 'Nom du taxon : Genre Espèce Autorité (éventuellement sous-espèce ou variété)', CategorieEvaluation as 'Catégorie de l''évaluation Liste rouge (cf les guidelines)', CodeMenace AS 'Code de la menace selon nomenclature UICN', DescriptionMenace as'Description de la menace', CommentaireMenace as'Commentaire', DureeMenace as'Menace en-cours, passée ou future',MenaceEspeceIdentifiee as'Espèce envahissante concernée' FROM endemiadb.menace
INNER JOIN jointmenaceevaluation
ON idMenace = Menace_idMenace
INNER JOIN evaluationlisterouge
ON idEvaluationListeRouge= jointmenaceevaluation.EvaluationListeRouge_idEvaluationListeRouge
INNER JOIN taxon
ON evaluationlisterouge.Taxon_NomScientifique = taxon.NomScientifique
#where PublicationIUCN='1'