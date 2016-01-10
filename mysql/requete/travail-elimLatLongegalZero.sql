SET SQL_SAFE_UPDATES=0;
UPDATE `endemiadb`.`occurence` SET `Longitude`=NULL WHERE `Longitude`=0.0;