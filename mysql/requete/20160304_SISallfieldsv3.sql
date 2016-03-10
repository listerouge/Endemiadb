--Debut d'intégration du header pour SQL>CSV
SELECT '"internal_taxon_id'"', '"generationlength.range"', '"PopulationReductionPast.range"', '"PopulationReductionFuture.range"', '"PopulationReductionPastandFuture.range"', '"PopulationReductionPastBasis.value"', '"Station"', '"Date observation"', '"Observateur"', '"Source Donnee"', '"Observateur"', '"Media"', '"FiabiliteDonnee"', '"NumeroRecolte"', '"NumeroPart"', '"occurrence.AltitudeMinimale"', '"Gps_source"', '"precis.geoloc"', '"Observateur"', '"Observateur"', '"Observateur"'
UNION ALL
SELECT  
IFNULL(idEvaluationListeRouge, 'Null') AS 'internal_taxon_id', 
IFNULL(DureeGenerationnelle, 'Null')  AS 'generationlength.range', 
IFNULL(PopulationReductionPasse, 'Null') AS 'PopulationReductionPast.range', 
IFNULL(PopulationReductionFutur, 'Null') AS'PopulationReductionFuture.range', 
IFNULL(PopulationReductionFuturETPasse, 'Null') AS 'PopulationReductionPastandFuture.range', 
IFNULL(CausePopulationReductionPasse, 'Null') AS'PopulationReductionPastBasis.value', 
IFNULL(CausePopulationReductionFutur, 'Null') AS 'PopulationReductionFutureBasis.value', 
IFNULL(CauseReductionPasseETFutur, 'Null') AS 'PopulationReductionPastandFutureBasis.value',
IFNULL(ReductionPopulationPasseCauseComprise, 'Null') AS'PopulationReductionPastUnderstood.value',
IFNULL(ReductionPopulationPasseCauseReversible , 'Null')AS'PopulationReductionPastReversible.value',
IFNULL(ReductionPopulationPasseCauseFin, 'Null') AS'PopulationReductionPastCeased.value',
IFNULL(ReductionPopulationPasseFuturCauseComprise, 'Null') AS'PopulationReductionPastandFutureUnderstood.value',
IFNULL(ReductionPopulationPasseFuturCauseReversible, 'Null') AS'PopulationReductionPastAndFutureReversible.value',
IFNULL(ReductionPopulationPasseFuturCauseFin, 'Null') AS'PopulationReductionPastAndFutureCeased.value', 
IFNULL(EOO, 'Null') AS 'EOO.range', 
IFNULL(AOO, 'Null') AS 'AOO.range', 
IFNULL(AltitudeMinimale, 'Null') AS 'ElevationLower.limit', 
IFNULL(AltitudeMaximale, 'Null') AS'ElevationUpper.limit', 
IFNULL(NombreSousPopulation, 'Null') AS 'maxsubpopulationsize.range', 
IFNULL(NombreLocalite, 'Null') AS 'LocationsNumber.range', 
IFNULL(NombreLocaliteJustification, 'Null') AS 'LocationsNumber.justification', 
IFNULL(FragmentationSevere, 'Null') AS 'SevereFragmentation.isFragmented', 
IFNULL(PopulationTailleIndMature, 'Null') AS'PopulationSize.range', 
IFNULL(DeclinContinuAOO, 'Null') AS 'AOOContinuingDecline.isInContinuingDecline', 
IFNULL(DeclinContinuEOO, 'Null') AS 'EOOContinuingDecline.isContinuingDecline', 
IFNULL(DeclinContinuLocaliteSousPopulation, 'Null') AS 'LocationContinuingDecline.InDecline', 
IFNULL(DeclinContinuIndMature, 'Null') AS 'PopulationContinuingDecline.isDeclining', 
IFNULL(DeclinContinuHabitat, 'Null') AS 'HabitatContinuingDecline.IsDeclining', 
IFNULL(DeclinContinuAOOQualificatif, 'Null') AS 'AOOContinuingDecline.qualifier', 
IFNULL(DeclinContinuEOOQualificatif, 'Null') AS 'EOOContinuingDecline.qualifier', 
IFNULL(DeclinContinuNombreLocaliteSsPopulationQualificatif, 'Null') AS 'LocationContinuingDecline.qualifier', 
IFNULL(DeclinContinuIndMatureQualificatif, 'Null') AS 'PopulationContinuingDecline.qualifier', 
IFNULL(DeclinContinuHabitatQualificatif, 'Null') AS 'HabitatContinuingDecline.qualifier', 
IFNULL(FluctuationExtremeAOO, 'Null') AS 'AOOExtremeFluctuation.is Fluctuating', 
IFNULL(FluctuationExtremeEOO, 'Null') AS 'EOOExtremeFluctuation.is Fluctuating', 
IFNULL(FluctuationExtremeNombreLocalite, 'Null') AS 'LocationExtremeFluctuation.is Fluctuating', 
IFNULL(FluctuationExtremeIndMature, 'Null') AS 'PopulationExtremeFluctuation.is Fluctuating', 
IFNULL(FluctuationExtremeSousPopulation, 'Null') AS 'SubpopulationExtremeFluctuation.is Fluctuating', 
IFNULL(ProbabiliteExtinctionGeneration3, 'Null') AS 'ExtinctionProbabilityGenerations3.range', 
IFNULL(ProbabiliteExtinctionGeneration5, 'Null') AS 'ExtinctionProbabilityGenerations5.range', 
IFNULL(ProbabiliteExtinctionAnnee100, 'Null') AS 'ExtinctionProbabilityYears100.range', 
IFNULL(NonUtilisationEspece, 'Null') AS 'NotUtilized.isNotUtilized', 
IFNULL(NonInformationUtilisationCommercialisationEspece, 'Null') AS 'UseTradeNoInformation.value', 
IFNULL(NonConsommationEspece, 'Null') AS 'NonConsumptiveUse.isNonConsumptiveUse', 
IFNULL(NonInformationSubsistanceEspece, 'Null') AS 'Livelihoods.noInfo', 
IFNULL(NonExistenceMenace, 'Null') AS'NoThreats.noThreats', 
IFNULL(MenaceInconnue, 'Null') AS 'threatsunknown.value'

INTO OUTFILE 'C:/Users/Endemia/Documents/12 - GestionDonnees/export-SIS/20160304exportSIS/allfield.csv'
  FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"' 
  LINES TERMINATED BY '\n'

FROM evaluationlisterouge
where AireEvaluation = 'Global' AND DateEvaluation ='2015/07/24' AND CategorieEvaluation != 'NE';