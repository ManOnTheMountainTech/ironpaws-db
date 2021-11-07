DROP procedure IF EXISTS `sp_newPerson`;

DELIMITER $$

CREATE PROCEDURE `sp_newPerson`(
    IN argSalutation VARCHAR(255), 
	IN argPersonName VARCHAR(255),
    IN argLanguage SMALLINT)
BEGIN
	INSERT INTO people (salutation, person_name, argLanguage)
    VALUES (argSalutation, argPersonName, argLanguage);
END$$

DELIMITER ;