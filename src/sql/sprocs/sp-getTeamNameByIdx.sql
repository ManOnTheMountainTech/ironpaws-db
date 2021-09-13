DROP procedure IF EXISTS `sp_getTeamNameByIdx`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getTeamNameByIdx`(IN name_tn_arg INT)
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Gets the teams owned by this person as result set.'
BEGIN
    SELECT name_tn FROM `team_name` where (id_tn_ai = name_tn_arg);
END$$

DELIMITER ;