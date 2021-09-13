DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_newDog`(IN `dogName` VARCHAR(255), 
    IN `dogAge` INT,
    IN `personId`)
    MODIFIES SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT 'Inserts a new dog into the table'
BEGIN
	INSERT INTO dogs (dog_name, dog_age, dog_owner)
    VALUES (dogName, dogAge, personId);
	SELECT LAST_INSERT_ID();
END$$
DELIMITER ;