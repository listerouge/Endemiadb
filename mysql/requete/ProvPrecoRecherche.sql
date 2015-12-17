SELECT  idTaxEndemia AS 'Identifiant du taxon selon Endemia',idTaxFlorical AS'Identifiant du taxon selon Florical', NomScientifique AS 'Nom du taxon : Genre Espèce Autorité (éventuellement sous-espèce ou variété)', CategorieEvaluation as 'Catégorie de l''évaluation Liste rouge (cf les guidelines)', CodeRecherche AS 'Code de la préconisation recherche selon nomenclature UICN', DescriptionRecherche AS 'Type de préconisation en matière de recherche', NoteRechercheFR AS 'Commentaire' , DureeRecherche 'Durée estimée de la préconisation' FROM endemiadb.preconisationrecherche
INNER JOIN jointpreconisationrechercheevaluation
ON idRecherche = PreconisationRecherche_idRecherche
INNER JOIN evaluationlisterouge
ON idEvaluationListeRouge = EvaluationListeRouge_idEvaluationListeRouge
INNER JOIN taxon
ON NomScientifique=Taxon_NomsCientifique
#WHERE PublicationIUCN=1