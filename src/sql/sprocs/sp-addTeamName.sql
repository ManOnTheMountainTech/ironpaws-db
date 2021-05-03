USE `bryan_mush`;
DROP procedure IF EXISTS `sp_addTeamName`;

DELIMITER $$
USE `bryan_mush`$$
CREATE PROCEDURE `sp_addTeamName` (IN teamName VARCHAR(255))
COMMENT 'Adds a team name'
SQL SECURITY INVOKER
BEGIN
    INSERT INTO team_name (`name_tn`) VALUES (teamName);
    SELECT LAST_INSERT_ID();
END$$

DELIMITER ;