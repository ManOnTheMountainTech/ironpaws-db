DROP procedure IF EXISTS `sp_getAllTeamInfoAndTNByPersonId`;

DELIMITER $$
CREATE  PROCEDURE `sp_getAllTeamInfoAndTNByPersonId`(IN person_id_arg INT)
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Gets all of the info abut this team as a result set.'
BEGIN
    SELECT team_id_ai, team_bib_number, team_tn_fk, team_class_id, name_tn
    FROM teams 
    JOIN team_name on (id_tn_ai = team_tn_fk)
    WHERE team_person_fk = person_id_arg;
END$$

DELIMITER ;