/*REQUETE SQL permettant de stocker dans la table jointevaluationoccurrence, les occurence lié à une evaluation  */
/*Se base sur le nom de taxon evalué, peut chercher des familles entières , des genres ou un taxon precis cf LIKE */
/*ATTENTION dans le cas de données d'occurence qui sont utilisé aussi bien pour une variété que pour le genre, il faut les rajouter à la main */
INSERT INTO jointevaluationoccurrence (Occurrence_idOccurrence,EvaluationListeRouge_idEvaluationListeRouge )
	SELECT occurrence.idOccurence, evaluationlisterouge.idEvaluationListeRouge
	FROM endemiadb.evaluationlisterouge
	JOIN endemiadb.occurrence
	ON occurrence.NomTaxon=evaluationlisterouge.Taxon_NomScientifique
	WHERE occurrence.NomTaxon LIKE "Liparis laxa Schltr. var. laxa%";
	

