--Test en ligne pour appel depusi cmd
SELECT * INTO OUTFILE 'C:/Users/Endemia/Documents/12 - GestionDonnees/export-SIS/20160304exportSIS/allfield.csv' FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'
FROM evaluationlisterouge
where DateEvaluation ='2015/07/24';