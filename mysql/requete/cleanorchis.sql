select idOccurence,NomTaxon from occurrence
where NomTaxon like '%Acianthus%' or NomTaxon like '%Agrostophyllum%' or NomTaxon like'%Calochilus%' or NomTaxon like'%Coelogyne%' or NomTaxon like'%Dendrobium%' or NomTaxon like '%Hymenorchis%' or NomTaxon like'%Bulbophyllum%' or NomTaxon like '%Caladenia%' or NomTaxon like '%Erythrodes%' or NomTaxon like '%Eulophia%'or NomTaxon like'%Goodyera%' or NomTaxon like '%Gunnarella%'  or NomTaxon like '%Habenaria%' or NomTaxon like '%Hetaeria%' or NomTaxon like '%Liparis%' or NomTaxon like '%Megastylis%' or NomTaxon like '%Microtatorchis%'or NomTaxon like '%Moerenhoutia%'  or NomTaxon like '%Nervilia%' or NomTaxon like '%Octarrhena%'or NomTaxon like '%Oeceoclades%' or NomTaxon like '%Pachystoma%' or NomTaxon like '%Peristylus%' or NomTaxon like '%Sarcanthopsis%' or NomTaxon like '%Sarcochilus%' or NomTaxon like '%Stichorkis%' or NomTaxon like '%Taeniophyllum%' or NomTaxon like '%Thrixspermum%' or NomTaxon like '%Zeuxine%'

SELECT jointevaluationoccurrence.*,evaluationlisterouge.Taxon_NomScientifique FROM endemiadb.jointevaluationoccurrence
inner join evaluationlisterouge
on idEvaluationListeRouge=jointevaluationoccurrence.EvaluationListeRouge_idEvaluationListeRouge
where EvaluationListeRouge_idEvaluationListeRouge between 302 and 560
