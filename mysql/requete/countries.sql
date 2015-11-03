SELECT Taxon_idTaxEndemia AS 'idTaxRLAPlantsNC', PaysOccurence AS 'CountryOccurence.CountryOccurenceSubfield.CountryOccurenceLookup',Presence AS 'CountryOccurence.CountryOccurenceSubfield.presence',Origine AS 'CountryOccurence.CountryOccurenceSubfield.origin' FROM endemiadb.airegeographique
INNER JOIN jointairegeographiquetaxon 
ON idAireGeographique = AireGeographique_idAireGeographique
WHERE Taxon_idTaxEndemia != '321'
