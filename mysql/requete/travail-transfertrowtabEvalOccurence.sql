insert  into jointevaluationoccurence (Occurence_idOccurence,EvaluationListeRouge_IdEvaluationListeRouge)
SELECT idOccurence,idEvaluationListeRouge FROM endemiadb.occurence
join evaluationlisterouge
on Taxon_NomScientifique = occurence.Nomtaxon
where NomTaxon like'%Plerandra%' or NomTaxon like'%Podonephelium%' or NomTaxon like '%Cyrtandra%'