DROP procedure IF EXISTS `sp_getAllTeamInfoAndTNByPersonId`;

DELIMITER $$
CREATE  PROCEDURE `sp_getAllTeamInfoByPersonId`(IN person_id_arg INT)
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Gets all of the info abut this team as a result set.'
BEGIN
    SELECT team_id_ai, team_bib_number, team_tn_fk, team_class_id 
        FROM teams WHERE team_person_fk = person_id_arg;
END$$

DELIMITER ;