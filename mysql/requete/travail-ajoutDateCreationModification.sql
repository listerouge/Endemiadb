ALTER TABLE `endemiadb`.`airegeographique` #requete utilisee pour ajouter les dates de creation et dates de moficiation à chaque table
ADD COLUMN `DateCreation` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '' AFTER `Origine`,
ADD COLUMN `DateModification` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '' AFTER `DateCreation`;