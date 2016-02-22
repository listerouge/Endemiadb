#requete permettant de charger les taxons à la fois dans la table taxon et dans le tb eval 
begin;
LOAD DATA LOCAL INFILE 'C:/Users/Endemia/Documents/12 - GestionDonnees/.csv' into table taxon
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
#Ignore 1 lines si table avec en-tête
(@col1,@col2,@col3,@col4,@col5,@col6,@col7,@col8,@col9,@col10,@col11,@col12,@col13,@col14,@col15)
 set  NomScientifique=@col1,ClasseBota=@col2,Ordre=@col3,Famille=@col4,Genre=@col5,Espece=@col6,InfraType=@col7,InfraNom=@col8,AutoriteTaxonomiqueEspece=@col9,AutoriteTaxonomiqueInfra=@col10,idTaxEndemia=@col11,idTaxFlorical=@col12,DescriptionEspece=@col13;
#idTaxref pourrait être rajouté si besoin
#pour actualiser le lien vers fiche endemia
SET SQL_SAFE_UPDATES=0;
update occurence
SET LienFicheEndemia=concat('http://www.endemia.nc/flore/fiche',idTaxEndemia,'.html');


LOAD DATA LOCAL INFILE 'C:/Users/Endemia/Documents/12 - GestionDonnees/.csv' into table evaluationlisterouge
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
#Ignore 1 lines si table avec en-tête
(@col1,@col2,@col3,@col4,@col5,@col6,@col7,@col8,@col9,@col10,@col11,@col12,@col13,@col14,@col15)
 set  Taxon_NomScientifique=@col1,AireEvaluation=@col14,DateEvaluation=@col15;
 #d'autres champs peuvent être ajoutés si besoin

 commit;