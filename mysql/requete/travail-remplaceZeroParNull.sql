SET SQL_SAFE_UPDATES=0;
UPDATE `endemiadb`.`occurrence` SET `Longitude`=NULL WHERE `Longitude`=0.0;
UPDATE `endemiadb`.`occurrence` SET `Latitude`=NULL WHERE `Latitude`=0.0;
UPDATE `endemiadb`.`occurrence` SET `AltitudeMaximale`=NULL WHERE `AltitudeMaximale`=0.0;
UPDATE `endemiadb`.`occurrence` SET `AltitudeMinimale`=NULL WHERE `AltitudeMinimale`=0.0;
UPDATE `endemiadb`.`occurrence` SET `AnneeObservation`=NULL WHERE `AnneeObservation`=0;
UPDATE `endemiadb`.`occurrence` SET `MoisObservation`=NULL WHERE `MoisObservation`=0;
UPDATE `endemiadb`.`occurrence` SET `JourObservation`=NULL WHERE `JourObservation`=0;