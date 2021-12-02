DROP PROCEDURE IF EXISTS sp_createNewTeam;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_createNewTeam`(IN `teamName` VARCHAR(255) CHARSET utf8mb4, IN `teamPerson_id` INT, IN `teamClass_id` INT)
    MODIFIES SQL DATA
    DETERMINISTIC
    COMMENT 'Creates a new dog team including creating the team name'
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
        BEGIN
        	SHOW ERRORS;
            ROLLBACK;
            RESIGNAL;
        END;

	START TRANSACTION;
        INSERT INTO team_name (`name_tn`) VALUES 
            (teamName COLLATE utf8mb4_0900_as_ci );	
    COMMIT;
	START TRANSACTION;
       INSERT INTO teams(`team_tn_fk`, `team_person_fk`, `team_class_id`)
       VALUES (LAST_INSERT_ID(), teamPerson_id, teamClass_id);		
  	COMMIT;
END$$
DELIMITER ;