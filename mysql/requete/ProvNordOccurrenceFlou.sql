SELECT idTaxEndemia AS 'Identifiant du taxon selon Endemia',idTaxFlorical AS'Identifiant du taxon selon Florical', NomScientifique AS 'Nom du taxon : Genre Espèce Autorité (éventuellement sous-espèce ou variété)',Province,Commune, Station, Compilateur, CompilationAnnee, Credit, Floor(Latitude) AS'Latitude', Floor(Longitude) AS 'Longitude', ReferentielSpatial,AnneeObservation,MoisObservation,JourObservation,Observateur, SourceDonnee, NumeroRecolte,NumeroPart,Media,occurence.AltitudeMinimale,occurence.AltitudeMaximale,UtilisationEvaluation,FiabiliteDonnee,CommentaireDonnee,GpsSource,FormationVegetale,Substrat,AutreInfoTaxon FROM endemiadb.occurence
INNER JOIN taxon
ON NomScientifique=NomTaxon
INNER JOIN evaluationlisterouge
ON NomScientifique=Taxon_NomScientifique
#WHERE PublicationIUCN=1
WHERE (NomTaxon LIKE '%Plerandra%' OR NomTaxon LIKE '%Hibbertia%' OR NomTaxon LIKE '%Tetracera%' OR NomTaxon LIKE '%Podonephelium%' OR NomTaxon LIKE '%Cyrtandra%' ) #AND DonneeSensible = '1'