USE `bryany_mush`;
DROP procedure IF EXISTS `NewPerson`;

DELIMITER $$
USE `bryany_mush`$$
CREATE PROCEDURE `NewPerson`(IN argSalutation VARCHAR(255), 
	IN argPersonName VARCHAR(255),
    IN argLanguage SMALLINT)
BEGIN
	INSERT INTO people (salutation, person_name, argLanguage)
    VALUES (argSalutation, argPersonName, argLanguage);
END$$

DELIMITER ;