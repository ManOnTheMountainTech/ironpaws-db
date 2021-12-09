DROP procedure IF EXISTS `sp_getAllTeamInfoByPersonId`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getAllTeamInfoByPersonId`(IN person_id_arg INT)
    READS SQL DATA
    SQL SECURITY DEFINER
    COMMENT 'Gets all of the info abut this team as a result set.'
BEGIN
    SELECT team_id_ai, team_bib_number, team_class_id 
        FROM teams WHERE team_person_fk = person_id_arg;
END$$

DELIMITER ;