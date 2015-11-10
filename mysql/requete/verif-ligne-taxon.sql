SELECT NomTaxonBinomial,idTaxEndemia, count(NomTaxonBinomial) FROM occurence
WHERE NomTaxonBinomial LIKE '%Acropogon%' # 	AND FiabiliteDonnee ='fiable'
group by idTaxEndemia
