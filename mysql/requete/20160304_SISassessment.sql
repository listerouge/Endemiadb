SELECT DISTINCT
idEvaluationListeRouge AS 'internal_taxon_id', 
date_format(DateEvaluation,'%d/%m/%Y') AS 'RedListAssessmentDate.value', 
TendanceEvaluation AS'PopulationTrend.value', 
if(CategorieEvaluation='NT',replace(CritereEvaluation,CritereEvaluation,null),CritereEvaluation) AS'RedListCriteria.manualCategory',
PotentiellementEX AS 'RedListCriteria.possiblyExtinct',
PotentiellementEW AS'RedListCriteria.possiblyExtinctCandidate',
PEDerniereAnneeObservation AS'RedListCriteria.possiblyExtinctCandidate', 
ArgumentaireEvaluationEN AS 'RedListRationale.value', 
VersionMethodeIUCN AS 'RedListCriteria.critVersion', 
AireGeographiqueRecitEN AS 'RangeDocumentation.narrative', 
HabitatEcologieRecitEN As 'habitatdocumentation.narrative ', 
PopulationRecitEN AS 'PopulationDocumentation.narrative', 
CommercialisationUtilisationEspeceRecitEN AS 'UseTradeDocumentation.value', 
MenaceRecitEN AS 'threatsdocumentation.value', 
ConservationRecitEN AS 'ConservationActionsdocumentation.narrative', 
DataDeficientRaison AS 'RedListCriteria.dataDeficientReason', 
Systeme AS 'System.value', 
Ecozone AS 'BiogeographicRealm.realm', 
StatutEnvoiPointCarteIUCN AS'MapStatus.status'

FROM evaluationlisterouge
JOIN jointhabitatevaluation
ON jointhabitatevaluation.EvaluationListeRouge_idEvaluationListeRouge = evaluationlisterouge.idEvaluationListeRouge
JOIN habitatstandard
ON idHabitat= Habitat_idHabitat
JOIN jointairegeographiqueevaluation
ON idEvaluationListeRouge = jointairegeographiqueevaluation.EvaluationListeRouge_idEvaluationListeRouge
JOIN airegeographique
ON idAireGeographique = AireGeographique_idAireGeographique
WHERE AireEvaluation = 'Global' AND (DateEvaluation ='2015-07-23' OR DateEvaluation='2015-07-24') AND CategorieEvaluation != 'NE';
