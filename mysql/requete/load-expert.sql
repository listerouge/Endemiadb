insert into jointexpertevaluation(EvaluationListeRouge_idEvaluationListeRouge,Expert_idExpert,RoleExpert,OrdreExpert)
values ((Select idEvaluationListeRouge from evaluationlisterouge where evaluationlisterouge.DateEvaluation='2016-02-18'),'RlaNC01','Assessor',1),
((Select idEvaluationListeRouge from evaluationlisterouge where  evaluationlisterouge.DateEvaluation='2016-02-18'),'RlaNC02','Assessor',2);
#case 
	#when evaluationlisterouge.DateAtelier='2016-02-18'
    #END case
    
    insert into jointexpertevaluation(EvaluationListeRouge_idEvaluationListeRouge,Expert_idExpert,RoleExpert,OrdreExpert)
values (EvaluationListeRouge_idEvaluationListeRouge,'RlaNC01','Assessor',1),
(EvaluationListeRouge_idEvaluationListeRouge,'RlaNC02','Assessor',2)
case 
	when evaluationlisterouge.DateAtelier='2016-02-18'
   