#requete permettant de charger les données non retouchées dans les deux tables occurrence
begin;
LOAD DATA LOCAL INFILE 'C:/Users/Endemia/Documents/12 - GestionDonnees/table-Orchis/Laudereauatelier4.csv' into table occurrenceorigine
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
#Ignore 1 lines si table avec en-tête
(@col1,@col2,@col3,@col4,@col5,@col6,@col7,@col8,@col9,@col10,@col11,@col12)
 set  idOccurence=@col1,NomTaxonOrigine=@col2,StationOrigine=@col3,AnneeObservationOrigine=@col4,MoisObservationOrigine=@col5,JourObservationOrigine=@col6,ObservateurOrigine=@col7,SourceDonneeOrigine=@col8,LatitudeDDOrigine=@col9,LongitudeDDOrigine=@col10,AltitudeMinimaleOrigine=@col11,AltitudeMaximaleOrigine=@col12,GpsSourceOrigine='post facto',DonneeSensibleOrigine=0;
 
#idEchantillonOrigine,ProvinceOrigine,CommuneOrigine,NumeroRecolteOrigine,NumeroPartOrigine,TypeStatutOrigine,MediaOrigine,LatitudeUTMOrigine,LongitudeUTMOrigine,TypeRestrictionOrigine,MorphologieOrigine,TypeBioOrigine,FormationVegetaleOrigine,AutreInfoTaxonOrigine autre champs pouvant être intégrés dans la table occurrenceorigine

LOAD DATA LOCAL INFILE 'C:/Users/Endemia/Documents/12 - GestionDonnees/table-Orchis/Laudereauatelier4.csv' into table occurrence
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
#Ignore 1 lines si table avec en-tête
(@col1,@col2,@col3,@col4,@col5,@col6,@col7,@col8,@col9,@col10,@col11,@col12)
 set  idOccurence=@col1,NomTaxon=@col2,Presence=1,Origine=1,Saisonnalite=1,Compilateur= 'Laudereau C., Chanfreau S.',CompilationAnnee=2016,Credit='NC Plants RLA',Station=@col3,AnneeObservation=@col4,MoisObservation=@col5,JourObservation=@col6,Observateur=@col7,SourceDonnee=@col8,Latitude=@col9,Longitude=@col10,AltitudeMinimale=@col11,AltitudeMaximale=@col12,FiabiliteDonnee='fiable',UtilisationEvaluation='OK EVAL RLA',ReferentielSpatial='WGS84',GpsSource='post facto',DonneeSensible=0,AffichagePublic=1;
 
#Province,Commune,NumeroRecolte,NumeroPart,Media,CommentaireDonnee,TypeRestriction,RaisonDonneeSensible,FormationVegetale,Substrat,AutreInfoTaxon autre champs pouvant être intégrés dans la table occurrence

#pour generer les id automatiquement j'ai voulu utiliser la ofnction last_user_id mais cela ne fonctionne pas en multiple row, donc j'ai preferé generer moi-même l'idée dans le fichier à uploader pour être sur de ne pas faire d'erreur.
 commit;