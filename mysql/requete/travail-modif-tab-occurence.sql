###requete brouillon quand je travaille sur la tab occurence

#SELECT * FROM endemiadb.occurence
#WHERE NumeroRecolte='22567' #NomTaxonBinomial = 'Hibbertia vieillardii' and  SourceDonnee = 'Herbier NOU' and Observateur = 'MacKee'  idTaxEndemia = '2443' and  #SourceDonnee = 'Herbier NOU' AND Observateur = 'Veillon'
#SELECT @test
#SELECT * FROM endemiadb.occurence

SET SQL_SAFE_UPDATES=0;
update occurence
#SET idEchantillonOrigine=right(MediaOrigine,5)
SET idEchantillonOrigine=CASE
WHEN idEchantillonOrigine IS NULL THEN idEchantillonOrigine=0
ELSE idEchantillonOrigine
END
#SELECT SourceDonneeOrigine, right(MediaOrigine,5) AS test FROM endemiadb.occurence
#WHERE SourceDonneeOrigine = 'Herbier NOU' 
#SELECT replace(idEchantillonOrigine,
