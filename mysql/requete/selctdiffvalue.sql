SELECT DISTINCT Observateur FROM endemiadb.occurence
WHERE (NomTaxonBinomial LIKE 'Tetracera%' OR NomTaxonBinomial LIKE 'Hibbertia%') AND DonneeSensible = '1'