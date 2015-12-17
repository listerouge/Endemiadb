SELECT idTaxEndemia AS 'Identifiant du taxon selon Endemia',idTaxFlorical AS'Identifiant du taxon selon Florical', NomScientifique AS 'Nom du taxon : Genre Espèce Autorité (éventuellement sous-espèce ou variété)',CategorieEvaluation as 'Catégorie de l''évaluation Liste rouge (cf les guidelines)', CodeConservation AS 'Code de la mesure de conservation existante selon nomenclature UICN', MesureConservationExistante AS 'Type de mesure de conservation', OrganismeConservation AS 'Organisme en charge de la mesure de conservation', AireConservation AS 'Zone concernée par la mesure de conservation', DateDebut AS 'Date de début',DateFin AS 'Date de fin',CommentaireMesureConservation as 'Commentaire' FROM endemiadb.mesureconservationexistante
INNER JOIN jointevaluationmesureconservationexistante
ON idMesureConservationExistante = MesureConservationExistante_idMesureConservationExistante
INNER JOIN evaluationlisterouge
ON idEvaluationListeRouge = EvaluationListeRouge_idEvaluationListeRouge
INNER JOIN taxon
ON evaluationlisterouge.Taxon_NomScientifique = taxon.NomScientifique
#WHERE PublicationIUCN='1'