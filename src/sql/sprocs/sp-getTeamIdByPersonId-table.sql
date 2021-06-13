DROP procedure IF EXISTS `sp_getTeamIdByPersonId_table`;

DELIMITER $$
CREATE  PROCEDURE `sp_getTeamIdByPersonId-table`(IN team_id INT)
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Gets the teams owned by this person as a table.'
BEGI
    
    INSERT INTO team_clones(team_id)
    	SELECT team_id_ai FROM teams WHERE team_person_fk = person_id;
END$$

DELIMITER ;