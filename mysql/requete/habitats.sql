SELECT Taxon_idTaxEndemia AS 'idTaxRLAPlantsNC', CodeHabitat AS 'GeneralHabitats.GeneralHabitatsSubfield.GeneralHabitatsLookup', HabitatAdequation AS 'GeneralHabitats.GeneralHabitatsSubfield.suitability' FROM endemiadb.habitat
INNER JOIN jointhabitattaxon
ON idHabitat = Habitat_idHabitat
WHERE Taxon_idTaxEndemia != '321'