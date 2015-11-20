SELECT NomTaxonBinomial,idTaxEndemia, count(NomTaxonBinomial) FROM occurence
WHERE NomTaxonBinomial LIKE '%Pittosporum%' OR NomTaxonBinomial LIKE '%Tetracera%'# 	AND FiabiliteDonnee ='fiable'
group by idTaxEndemia
#SELECT NomTaxonBinomial,idTaxEndemia, SourceDonnee, count(distinct SourceDonnee) AS 'test' FROM occurence
#WHERE NomTaxonBinomial LIKE '%Hibbertia deplancheana'# 	AND FiabiliteDonnee ='fiable'