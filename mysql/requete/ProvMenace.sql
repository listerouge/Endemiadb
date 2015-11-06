SELECT Taxon_idTaxEndemia AS 'idTaxEndemia',idTaxFlorical, concat(Genre,' ',Espece) AS 'Taxon', CodeMenace AS 'CodeMenaceUICN', DescriptionMenace, CommentaireMenace, DureeMenace,MenaceEspeceIdentifiee FROM endemiadb.menace
INNER JOIN jointmenaceevaluation
ON idMenace = Menace_idMenace
INNER JOIN evaluationlisterouge
ON idEvaluationListeRouge= jointmenaceevaluation.EvaluationListeRouge_idEvaluationListeRouge
INNER JOIN taxon
ON idTaxEndemia = Taxon_idTaxEndemia
WHERE Famille LIKE 'Dilleniaceae'