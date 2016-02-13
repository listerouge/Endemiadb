SELECT idEvaluationListeRouge AS 'internal_taxon_id', CodeMenace AS 'Threats.ThreatsSubfield.ThreatsLookup',CategorieMenaceEN AS 'Threats.ThreatsSubfield.Description',DureeMenace AS 'Threats.ThreatsSubfield.timing',PorteeMenace AS 'Threats.ThreatsSubfield.scope' , SeveriteMenace AS 'Threats.ThreatsSubfield.severity', MenaceEspeceIdentifiee AS'Threats.ThreatsSubfield.ias', MenaceEspeceNonIdentifiee AS 'Threats.ThreatsSubfield.text', MenaceMaladie AS 'Threats.ThreatsSubfield.virus' FROM endemiadb.menace
INNER JOIN jointmenaceevaluation
ON idMenace = Menace_idMenace
INNER JOIN evaluationlisterouge
ON idEvaluationListeRouge = EvaluationListeRouge_idEvaluationListeRouge
INNER JOIN codeiucn
ON CodeIUCN = CodeMenace
where Taxon_NomScientifique like '%Pittosporum%'