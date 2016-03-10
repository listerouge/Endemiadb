#! /bin/sh
# interests.sh - find USHL members with particular interests
if [ $# -ne 1 ]; then echo 'Please specify one date'; exit; fi
mysql -t sampdb <<QUERY_INPUT
SELECT idEvaluationListeRouge FROM evaluationlisterouge
WHERE AireEvaluation = 'Global' AND DateEvaluation ='%$1%' AND CategorieEvaluation != 'NE';
QUERY_INPUT