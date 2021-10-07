DROP PROCEDURE IF EXISTS sp_addNewDogToTeam;

-- Due to having to retry the operation, beginTransaction wasn't working
-- so do it here. 
DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_addNewDogToTeam`(IN `dogName` VARCHAR(16383) CHARSET utf8mb4, IN `dogAge` INT(2) UNSIGNED, IN `dogOwnerId` INT UNSIGNED, IN `teamId` INT UNSIGNED)
    MODIFIES SQL DATA
    DETERMINISTIC
    SQL SECURITY DEFINER;
    COMMENT 'Inserts a new dog into the dogs table and adds them to the team'
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
        BEGIN
            ROLLBACK;
            RESIGNAL;
        END;
        
   	START TRANSACTION;
        INSERT INTO dogs (dog_name, dog_age, dog_person_fk)
        VALUES (dogName, dogAge, dogOwnerId);
        CALL sp_addDogToTeam(LAST_INSERT_ID(), teamId);
  	COMMIT;
END$$
DELIMITER ;