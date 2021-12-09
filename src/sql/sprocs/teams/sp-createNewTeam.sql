DROP PROCEDURE IF EXISTS sp_createNewTeam;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_createNewTeam`(IN `teamName` VARCHAR(255) CHARSET utf8mb4, 
    IN `teamPerson_id` INT, 
    IN `teamClass_id` INT)
        MODIFIES SQL DATA
        DETERMINISTIC
        COMMENT 'Creates a new dog team including creating the team name'
BEGIN
    INSERT INTO teams(`team_name`, `team_person_fk`, `team_class_id`)
    VALUES (teamName, teamPerson_id, teamClass_id);
END$$
DELIMITER ;