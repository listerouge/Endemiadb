/*REQUETE SQL permettant de créer un trigger soit une automatisation qui détecte et effectue à chaque insertion dans la table evaluationlisterouge */
/*une insertion dans la table de jointure jointsourcebibliographiqueevaluation comportant les références FLORICAL et Endemia*/
--Delimiter permet de stipuler que le caractère pour delimiter une instruction sera le "|" plutot que ; afin d'eviter le conflit avec les ; utilisé dans la requete insert into
delimiter |
CREATE TRIGGER add_ref_biblio_aireGeo 
AFTER INSERT ON evaluationlisterouge
FOR EACH ROW
	BEGIN
	-- Insertion de la reference Endemia.nc
	INSERT INTO jointsourcebibliographiqueevaluation (EvaluationListeRouge_idEvaluationListeRouge,SourceBibliographique_idSourceBibliographique) VALUES (NEW.idEvaluationListeRouge,'2');
	-- Insertion de la reference Florical
	INSERT INTO jointsourcebibliographiqueevaluation (EvaluationListeRouge_idEvaluationListeRouge,SourceBibliographique_idSourceBibliographique) VALUES (NEW.idEvaluationListeRouge,'6');
	-- Insertion du code d'aire géographique / répartition pour les natives, par défaut on evalue un taxon forcement présent en NC
	INSERT INTO jointairegeographiqueevaluation (EvaluationListeRouge_idEvaluationListeRouge,AireGeographique_idAireGeographique) VALUES (NEW.idEvaluationListeRouge,'1');
	END;
|
delimiter ;
