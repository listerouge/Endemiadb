SELECT Taxon_idTaxEndemia AS 'idTaxEndemia',idTaxFlorical, concat(Genre,' ',Espece) AS 'Taxon', CodeConservation AS 'CodeConservationUICN', MesureConservationExistante, OrganismeConservation, AireConservation, DateDebut,DateFin,CommentaireMesureConservation FROM endemiadb.mesureconservationexistante
INNER JOIN jointtaxonmesureconservationexistante
ON idMesureConservationExistante = MesureConservationExistante_idMesureConservationExistante
INNER JOIN taxon
ON idTaxEndemia = Taxon_idTaxEndemia
WHERE Famille LIKE 'Dilleniaceae'