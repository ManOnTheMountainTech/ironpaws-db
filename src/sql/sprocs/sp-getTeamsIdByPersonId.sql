DROP procedure IF EXISTS `sp_getTeamIdByPersonId`;

DELIMITER $$
CREATE  PROCEDURE `sp_getTeamIdByPersonId`(IN team_name_id INT)
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Gets the teams owned by this person as result set.'
BEGIN
    SELECT team_id_ai FROM teams WHERE team_person_fk = person_id;
END$$

DELIMITER ;