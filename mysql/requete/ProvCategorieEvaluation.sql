SELECT idTaxEndemia AS 'Identifiant du taxon selon Endemia',idTaxFlorical AS'Identifiant du taxon selon Florical', NomScientifique AS 'Nom du taxon : Genre Espèce Autorité (éventuellement sous-espèce ou variété)',AireEvaluation AS'Evaluation Liste rouge globale (pour les endémiques) ou locale (pour les autochtones ou les "sp nov" non menacées)',CategorieEvaluation AS'Catégorie de l''évaluation Liste rouge (cf les guidelines)',CritereEvaluation AS 'Critère de l''évaluation Liste rouge (cf les guidelines)', AnneePublication as 'Année de la publication de l''évaluation liste  rouge mondiale' FROM endemiadb.evaluationlisterouge
INNER JOIN taxon
ON NomScientifique = Taxon_NomScientifique
WHERE NomScientifique like '%Hibbertia%'
or NomScientifique like'%Tetracera%' 
or NomScientifique like '%Plerandra%'
or NomScientifique like '%Podonephelium%'
or NomScientifique like '%Cyrtandra%'