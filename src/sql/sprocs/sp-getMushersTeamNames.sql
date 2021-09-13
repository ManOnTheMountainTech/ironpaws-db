DROP PROCEDURE IF EXISTS sp_getMushersTeamNames;

DELIMITER $$
#USE `bryan_mush`$$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getMushersTeamNames`(IN people_id INT)
    COMMENT 'Gets the names of the teams the musher has created' 
    DETERMINISTIC READS SQL DATA 
    SQL SECURITY INVOKER 
    BEGIN 
        SELECT team_name.id_tn_ai, team_name.name_tn FROM teams 
            INNER JOIN team_name ON (team_name.id_tn_ai = teams.team_tn_fk) where 
            (teams.team_person_fk = people_id);
    END$$

DELIMITER ;
