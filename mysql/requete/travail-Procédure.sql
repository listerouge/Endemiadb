--Procédure qui vise à actualiser la table jointexpertevaluation afin de lister les roles de chacun lors d'une serie d 'évaluation à une date donnée
--INPUT: Date de l'évaluation / Tableau qui recense les roles des experts.

DELIMITER | -- Facultatif si votre délimiteur est toujours |

CREATE PROCEDURE update_jointexpertevaluation (IN IN_date_evaluation date)  

    -- Définition du paramètre : IN : c'est un paramètre "entrant", nom dans la procédure, type (INT, VARCHAR(10)...)
	-- IN_date_evaluation : Paramètre entrant, de type date
	-- lien_csv : lien vers le fichier csv structuré comme suit : Date_atelier | Expert_id_expert | RoleExpert | OrdreExpert
	
	
BEGIN
	DROP TABLE IF EXISTS role_expert_temp ;
	
	CREATE TEMPORARY TABLE role_expert_temp
	(
	Date_atelier date,
	Expert_id_expert varchar(10),
	RoleExpert enum('Assessor','Contributor','Facilitator','Reviewer'),
	OrdreExpert int(11)
	);
	
	LOAD DATA LOCAL INFILE  'C:/Users/Endemia/Documents/experts.csv'
	INTO TABLE role_expert_temp
	FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
    Ignore 1 lines; 
	
	INSERT INTO jointexpertevaluation (EvaluationListeRouge_idEvaluationListeRouge,Expert_idExpert,RoleExpert,OrdreExpert)
		SELECT evaluationlisterouge.idEvaluationListeRouge, role_expert_temp.Expert_id_expert,role_expert_temp.RoleExpert,role_expert_temp.OrdreExpert
			FROM endemiadb.evaluationlisterouge
			JOIN role_expert_temp
			ON role_expert_temp.Date_atelier=evaluationlisterouge.DateEvaluation
			WHERE evaluationlisterouge.DateEvaluation = IN_date_evaluation;  -- Utilisation du paramètre IN_date_evaluation


END |

DELIMITER ;  -- On remet le délimiteur par défaut