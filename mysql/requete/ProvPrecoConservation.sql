SELECT idTaxEndemia AS 'Identifiant du taxon selon Endemia',idTaxFlorical AS'Identifiant du taxon selon Florical', NomScientifique AS 'Nom du taxon : Genre Espèce Autorité (éventuellement sous-espèce ou variété)',CategorieEvaluation as 'Catégorie de l''évaluation Liste rouge (cf les guidelines)', CodePreconisationConservation AS 'Code de la préconisation  conservation selon nomenclature UICN', DescriptionPreconisationConservation AS 'Description de la préconisation conservation', NotePreconisationConservationFR AS 'Remarque', DureePreconisationConservation AS 'Durée de la préconisation'FROM endemiadb.preconisationconservation
INNER JOIN jointpreconisationconservationevaluation
ON idPreconisationConservation = PreconisationConservation_idPreconisationConservation
INNER JOIN evaluationlisterouge
ON idEvaluationListeRouge = EvaluationListeRouge_idEvaluationListeRouge
INNER JOIN taxon
ON NomScientifique=Taxon_NomsCientifique
#WHERE PublicationIUCN=1