DROP procedure IF EXISTS `sp_addTeamName`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_addTeamName` (IN teamName VARCHAR(255))
COMMENT 'Adds a team name'
SQL SECURITY DEFINER;
BEGIN
    INSERT INTO team_name (`name_tn`) VALUES (teamName);
    SELECT LAST_INSERT_ID();
END$$

DELIMITER ;
