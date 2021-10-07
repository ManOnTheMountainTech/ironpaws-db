DROP procedure IF EXISTS `sp_addDogToTeam`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_addDogToTeam`(IN `dogId` INT, IN `dogTeamId` INT)
    MODIFIES SQL DATA
    DETERMINISTIC
    SQL SECURITY DEFINER
    COMMENT 'Assigns a dog to a team'
BEGIN
	INSERT INTO dog_team_assignments (dta_dog_fk, dta_team_fk)
    VALUES (dogId, dogTeamId);
    SELECT LAST_INSERT_ID();
END$$
DELIMITER ;