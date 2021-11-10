DROP procedure IF EXISTS `sp_newPerson`;

DELIMITER $$

CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_newPerson`(
    IN argSalutation VARCHAR(255), 
	IN argPersonName VARCHAR(255),
    IN argLanguage SMALLINT)
        MODIFIES SQL DATA
        DETERMINISTIC
        SQL SECURITY DEFINER
        COMMENT 'Inserts a new person into the database'
BEGIN
	INSERT INTO people (salutation, person_name, argLanguage)
    VALUES (argSalutation, argPersonName, argLanguage);
END$$

DELIMITER ;