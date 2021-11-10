DROP procedure IF EXISTS `sp_getTeamsByTeamNameId`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost`  PROCEDURE `sp_getTeamsByTeamNameId`(IN team_name_id_arg INT)
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY DEFINER
    COMMENT 'Gets the teams referred by this team name as an id.'
BEGIN
    	SELECT team_id_ai FROM teams WHERE team_tn_fk = team_name_id_arg;
END$$

DELIMITER ;