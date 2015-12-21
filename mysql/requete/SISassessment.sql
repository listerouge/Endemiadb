SELECT idEvaluationListeRouge AS 'internal_taxon_id', date_format(DateEvaluation,'%d-%m-%Y') AS 'RedListAssessmentDate.value', TendanceEvaluation AS'PopulationTrend.value', CategorieEvaluation AS'RedListCriteria.manualCategory',
if(CategorieEvaluation='NT',replace(CritereEvaluation,CritereEvaluation,null),CritereEvaluation) AS'RedListCriteria.manualCategory'
, ArgumentaireEvaluationEN AS 'RedListRationale.value', VersionMethodeIUCN AS 'RedListCriteria.critVersion', AireGeographiqueRecitEN AS 'RangeDocumentation.narrative', HabitatEcologieRecitEN As 'HabitatDocumentation.narrative', PopulationRecitEN AS 'PopulationDocument.narrative', CommercialisationUtilisationEspeceRecitEN AS 'UseTradeDocumentation.value', MenaceRecitEN AS 'ThreatsDocumentation.value', ConservationRecitEN AS 'ConservationActionsdocumentation.narrative', DataDeficientRaison AS 'RedListCriteria.dataDeficientReason', Systeme AS 'System.value', Ecozone AS 'BiogegraphicRealm.realm', StatutEnvoiPointCarteIUCN AS'MapStatus.status'
FROM evaluationlisterouge
INNER JOIN jointhabitatevaluation
ON jointhabitatevaluation.EvaluationListeRouge_idEvaluationListeRouge = evaluationlisterouge.idEvaluationListeRouge
INNER JOIN habitat
ON idHabitat= Habitat_idHabitat
INNER JOIN jointairegeographiqueevaluation
ON idEvaluationListeRouge = jointairegeographiqueevaluation.EvaluationListeRouge_idEvaluationListeRouge
INNER JOIN airegeographique
ON idAireGeographique = AireGeographique_idAireGeographique
GROUP BY evaluationlisterouge.Taxon_NomScientifique

