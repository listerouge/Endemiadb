SELECT occurence.idTaxEndemia AS 'idTaxEndemia', occurence.idTaxFlorical, NomTaxonBinomial AS 'Taxon', SousEspece, SousPopulation,Province,Commune, Station, Compilateur, CompilationAnnee, Credit,  Latitude, Longitude, ReferentielSpatial,AnneeObservation,MoisObservation,JoursObservation,Observateur, SourceDonnee, NumeroRecolte,NumeroPart,Media,AltitudeMinimale,AltitudeMaximale,UtilisationEvaluation,FiabiliteDonnee,CommentaireDonnee,GpsSource,FormationVegetale,Substrat,AutreInfoTaxon AS 'Data_Sens'FROM endemiadb.occurence
INNER JOIN taxon
ON taxon.idTaxEndemia = occurence.idTaxEndemia
WHERE Famille LIKE 'Dilleniaceae'
# WHERE (NomTaxonBinomial LIKE 'Tetracera%' OR NomTaxonBinomial LIKE 'Hibbertia%') AND DonneeSensible = '1'