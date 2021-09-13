DROP procedure IF EXISTS `sp_getTeamsFromPersonIdAsTable`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getTeamsFromPersonIdAsTable`(IN person_id INT)
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Gets the teams owned by this person as a table.'
BEGIN
    CREATE TEMPORARY TABLE team_clones(
        team_id INT PRIMARY KEY
    );
    
    INSERT INTO team_clones(team_id)
    	SELECT team_id_ai FROM teams WHERE team_person_fk = person_id;
END$$

DELIMITER ;