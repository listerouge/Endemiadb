LOAD DATA LOCAL INFILE 'C:/Users/Endemia/Documents/12 - GestionDonnees/table-PlerandraPodoCyrtandra/PLerandraTotal.csv' into table occurence
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
(@col1,@col2,@col3,@col4,@col5,@col6,@col7,@col8,@col9,@col10,@col11,@col12,@col13,@col14,@col15,@col16,@col17,@col18,@col19,@col20,@col21,@col22) set  idOccurence=@col1,NomTaxon=@col2,Presence=1,Origine=1,Saisonnalite=1,Compilateur= 'Lowry P.,Tanguy V.',CompilationAnnee=2014,Credit='NC Plants RLA', Latitude=@col3,Longitude=@col4,Station=@col6,AnneeObservation=@col7,MoisObservation=@col8,JourObservation=@col9,Observateur=@col10,SourceDonnee=@col11,Media=@col12,NumeroRecolte=@col14,AltitudeMinimale=@col16,AltitudeMaximale=@col17,GpsSource=@col18,FormationVegetale=@col20,AutreInfoTaxon=@col21, FiabiliteDonnee=@col5,UtilisationEvaluation=@col13,ReferentielSpatial='WGS84',CommentaireDonnee=@col19,DonneeSensible=0,AffichagePublic=@col22