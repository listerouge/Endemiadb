SELECT CategorieEvaluation,CategoriePreEvaluation,DateEvaluation,occurrence.* FROM endemiadb.occurrence
inner join evaluationlisterouge
on occurrence.NomTaxon= evaluationlisterouge.Taxon_NomScientifique
where Latitude>-21.24 and Latitude<-21.14 and Longitude>165.06 and Longitude<165.20