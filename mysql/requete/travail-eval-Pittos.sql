SET SQL_SAFE_UPDATES=0;-- premet de charger des données de la table eval sans affecter le reste 
CREATE TEMPORARY TABLE your_temp_table LIKE evaluationlisterouge;
LOAD DATA LOCAL INFILE 'C:/Users/Endemia/Documents/12 - GestionDonnees/Table-Pittos/tabEvaluationListeRougeV2.csv'
INTO TABLE your_temp_table
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
#(Taxon_NomScientifique,ConservationRecitEN,HabitatEcologieRecitEN,PopulationRecitEN,AireGeographiqueRecitEN,ArgumentaireEvaluationEN,MenaceRecitEN); 
;
UPDATE evaluationlisterouge
INNER JOIN your_temp_table on your_temp_table.Taxon_NomScientifique = evaluationlisterouge.Taxon_NomScientifique
SET evaluationlisterouge.AireEvaluation=your_temp_table.AireEvaluation,
evaluationlisterouge.DateEvaluation=your_temp_table.DateEvaluation,
evaluationlisterouge.CategoriePreEvaluation=your_temp_table.CategoriePreEvaluation,
evaluationlisterouge.CriterePreEvaluation=your_temp_table.CriterePreEvaluation,
evaluationlisterouge.CommentairePreEvaluation=your_temp_table.CommentairePreEvaluation,
evaluationlisterouge.TendanceEvaluation=your_temp_table.TendanceEvaluation,
evaluationlisterouge.CategorieEvaluation=your_temp_table.CategorieEvaluation,
evaluationlisterouge.CritereEvaluation=your_temp_table.CritereEvaluation,
evaluationlisterouge.RaisonChangementCategorie=your_temp_table.RaisonChangementCategorie,
evaluationlisterouge.ArgumentaireEvaluationFR=your_temp_table.ArgumentaireEvaluationFR,
evaluationlisterouge.ArgumentaireEvaluationEN=your_temp_table.ArgumentaireEvaluationEN,
evaluationlisterouge.NotesAtelier=your_temp_table.NotesAtelier,
evaluationlisterouge.VersionMethodeIUCN=your_temp_table.VersionMethodeIUCN,
evaluationlisterouge.PublicationIUCN=your_temp_table.PublicationIUCN,
evaluationlisterouge.AnneePublicationIUCN=your_temp_table.AnneePublicationIUCN,
evaluationlisterouge.DureeGenerationnelle=your_temp_table.DureeGenerationnelle,
evaluationlisterouge.PopulationReductionPasse=your_temp_table.PopulationReductionPasse,
evaluationlisterouge.PopulationReductionFutur=your_temp_table.PopulationReductionFutur,
evaluationlisterouge.PopulationReductionFuturETPasse=your_temp_table.PopulationReductionFuturETPasse,
evaluationlisterouge.CausePopulationReductionPasse=your_temp_table.CausePopulationReductionPasse,
evaluationlisterouge.CausePopulationReductionFutur=your_temp_table.CausePopulationReductionFutur,
evaluationlisterouge.CauseReductionPasseETFutur=your_temp_table.CauseReductionPasseETFutur,
evaluationlisterouge.AireGeographiqueRecitFR=your_temp_table.AireGeographiqueRecitFR,
evaluationlisterouge.AireGeographiqueRecitEN=your_temp_table.AireGeographiqueRecitEN,
evaluationlisterouge.HabitatEcologieRecitFR=your_temp_table.HabitatEcologieRecitFR,
evaluationlisterouge.HabitatEcologieRecitEN=your_temp_table.HabitatEcologieRecitEN,
evaluationlisterouge.EOO=your_temp_table.EOO,
evaluationlisterouge.AOO=your_temp_table.AOO,
evaluationlisterouge.AltitudeMinimale=your_temp_table.AltitudeMinimale,
evaluationlisterouge.AltitudeMaximale=your_temp_table.AltitudeMaximale,
evaluationlisterouge.PopulationRecitFR=your_temp_table.PopulationRecitFR,
evaluationlisterouge.PopulationRecitEN=your_temp_table.PopulationRecitEN,
evaluationlisterouge.NombreSousPopulation=your_temp_table.NombreSousPopulation,
evaluationlisterouge.NombreSousPopulationEstimation=your_temp_table.NombreSousPopulationEstimation,
evaluationlisterouge.NombreLocalite=your_temp_table.NombreLocalite,
evaluationlisterouge.NombreLocaliteEstimation=your_temp_table.NombreLocaliteEstimation,
evaluationlisterouge.NombreLocaliteJustification=your_temp_table.NombreLocaliteJustification,
evaluationlisterouge.FragmentationSevere=your_temp_table.FragmentationSevere,
evaluationlisterouge.PopulationTailleIndMature=your_temp_table.PopulationTailleIndMature,
evaluationlisterouge.PopulationTailleIndMatureEstimation=your_temp_table.PopulationTailleIndMatureEstimation,
evaluationlisterouge.DeclinContinuAOO=your_temp_table.DeclinContinuAOO,
evaluationlisterouge.DeclinContinuEOO=your_temp_table.DeclinContinuEOO,
evaluationlisterouge.DeclinContinuNombreLocalite=your_temp_table.DeclinContinuNombreLocalite,
evaluationlisterouge.DeclinContinuIndMature=your_temp_table.DeclinContinuIndMature,
evaluationlisterouge.DeclinContinuSousPopulation=your_temp_table.DeclinContinuSousPopulation,
evaluationlisterouge.DeclinContinuHabitat=your_temp_table.DeclinContinuHabitat,
evaluationlisterouge.DeclinContinuAOOQualificatif=your_temp_table.DeclinContinuAOOQualificatif,
evaluationlisterouge.DeclinContinuEOOQualificatif=your_temp_table.DeclinContinuEOOQualificatif,
evaluationlisterouge.DeclinContinuNombreLocaliteQualificatif=your_temp_table.DeclinContinuNombreLocaliteQualificatif,
evaluationlisterouge.DeclinContinuIndMatureQualificatif=your_temp_table.DeclinContinuIndMatureQualificatif,
evaluationlisterouge.DeclinContinuSousPopulationQualificatif=your_temp_table.DeclinContinuSousPopulationQualificatif,
evaluationlisterouge.DeclinContinuHabitatQualificatif=your_temp_table.DeclinContinuHabitatQualificatif,
evaluationlisterouge.FluctuationExtremeAOO=your_temp_table.FluctuationExtremeAOO,
evaluationlisterouge.FluctuationExtremeEOO=your_temp_table.FluctuationExtremeEOO,
evaluationlisterouge.FluctuationExtremeNombreLocalite=your_temp_table.FluctuationExtremeNombreLocalite,
evaluationlisterouge.FluctuationExtremeIndMature=your_temp_table.FluctuationExtremeIndMature,
evaluationlisterouge.FluctuationExtremeSousPopulation=your_temp_table.FluctuationExtremeSousPopulation,
evaluationlisterouge.ProbabiliteExtinctionGeneration3=your_temp_table.ProbabiliteExtinctionGeneration3,
evaluationlisterouge.ProbabiliteExtinctionGeneration5=your_temp_table.ProbabiliteExtinctionGeneration5,
evaluationlisterouge.ProbabiliteExtinctionAnnee100=your_temp_table.ProbabiliteExtinctionAnnee100,
evaluationlisterouge.NonUtilisationEspece=your_temp_table.NonUtilisationEspece,
evaluationlisterouge.NonInformationUtilisationCommercialisationEspece=your_temp_table.NonInformationUtilisationCommercialisationEspece,
evaluationlisterouge.CommercialisationUtilisationEspeceRecitFR=your_temp_table.CommercialisationUtilisationEspeceRecitFR,
evaluationlisterouge.CommercialisationUtilisationEspeceRecitEN=your_temp_table.CommercialisationUtilisationEspeceRecitEN,
evaluationlisterouge.NonConsommationEspece=your_temp_table.NonConsommationEspece,
evaluationlisterouge.NonInformationSubsistanceEspece=your_temp_table.NonInformationSubsistanceEspece,
evaluationlisterouge.NonExistenceMenace=your_temp_table.NonExistenceMenace,
evaluationlisterouge.MenaceInconnue=your_temp_table.MenaceInconnue,
evaluationlisterouge.MenaceRecitFR=your_temp_table.MenaceRecitFR,
evaluationlisterouge.MenaceRecitEN=your_temp_table.MenaceRecitEN,
evaluationlisterouge.ConservationRecitFR=your_temp_table.ConservationRecitFR,
evaluationlisterouge.ConservationRecitEN=your_temp_table.ConservationRecitEN,
evaluationlisterouge.DataDeficientRaison=your_temp_table.DataDeficientRaison;

DROP TEMPORARY TABLE your_temp_table