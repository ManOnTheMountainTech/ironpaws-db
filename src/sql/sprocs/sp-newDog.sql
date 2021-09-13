DROP PROCEDURE IF EXISTS `sp_newDog`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` 
PROCEDURE `sp_newDog`(IN `dogName` VARCHAR(21845), IN `dogAge` INT, IN `dogOwnerId` INT)
    MODIFIES SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT 'Inserts a new dog into the dogs table'
BEGIN
	INSERT INTO dogs (dog_name, dog_age, dog_person_fk)
    VALUES (dogName, dogAge, dogOwnerId);
    SELECT LAST_INSERT_ID();
END$$
DELIMITER ;