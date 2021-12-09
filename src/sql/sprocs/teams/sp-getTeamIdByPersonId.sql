DROP procedure IF EXISTS `sp_getTeamIdByPersonId`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getTeamIdByPersonId`(IN person_id INT UNSIGNED)
    READS SQL DATA
    SQL SECURITY DEFINER
    COMMENT 'Gets the teams owned by this person as result set.'
BEGIN
    SELECT team_id_ai FROM teams WHERE team_person_fk = person_id;
END$$

DELIMITER ;