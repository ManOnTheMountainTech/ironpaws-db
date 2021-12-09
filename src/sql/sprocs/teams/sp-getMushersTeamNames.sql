DROP PROCEDURE IF EXISTS sp_getMushersTeamNames;

DELIMITER $$
#USE `bryan_mush`$$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getMushersTeamNames`(IN people_id INT)
    COMMENT 'Gets the names of the teams the musher has created' 
    DETERMINISTIC READS SQL DATA 
    SQL SECURITY DEFINER
    BEGIN 
        SELECT team_name FROM teams 
        where (teams.team_person_fk = people_id);
    END$$

DELIMITER ;
