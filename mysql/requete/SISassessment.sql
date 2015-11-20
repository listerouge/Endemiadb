SELECT evaluationlisterouge.Taxon_idTaxEndemia AS 'idTaxRLAPlantsNC', date_format(DateEvaluation,'%d-%m-%Y') AS 'RedListAssessmentDate.value', TendanceEvaluation AS'PopulationTrend.value', CategorieEvaluation AS'RedListCriteria.manualCategory', CritereEvaluation AS'RedListCriteria.manualCategory', ArgumentaireEvaluationEN AS 'RedListRationale.value', VersionMethodeIUCN AS 'RedListCriteria.critVersion', AireGeographiqueRecitEN AS 'RangeDocumentation.narrative', HabitatEcologieRecitEN As 'HabitatDocumentation.narrative', PopulationRecitEN AS 'PopulationDocument.narrative', CommercialisationUtilisationEspeceRecitEN AS 'UseTradeDocumentation.value', MenaceRecitEN AS 'ThreatsDocumentation.value', ConservationRecitEN AS 'ConservationActionsdocumentation.narrative', DataDeficientRaison AS 'RedListCriteria.dataDeficientReason', Systeme AS 'System.value', Ecozone AS 'BiogegraphicRealm.realm' FROM evaluationlisterouge
INNER JOIN jointhabitattaxon
ON jointhabitattaxon.Taxon_idTaxEndemia = evaluationlisterouge.Taxon_idTaxEndemia
INNER JOIN habitat
ON idHabitat= Habitat_idHabitat
INNER JOIN jointairegeographiquetaxon
ON jointairegeographiquetaxon.Taxon_idTaxEndemia = evaluationlisterouge.Taxon_idTaxEndemia
INNER JOIN airegeographique
ON idAireGeographique= AireGeographique_idAireGeographique
GROUP BY evaluationlisterouge.Taxon_idTaxEndemia