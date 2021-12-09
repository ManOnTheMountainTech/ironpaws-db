DROP PROCEDURE IF EXISTS sp_getMushersTeams;

DELIMITER $$
#USE `bryan_mush`$$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getMushersTeams`(IN people_id INT)
    COMMENT 'Gets the teams the musher has created' 
    DETERMINISTIC READS SQL DATA 
    SQL SECURITY DEFINER
    BEGIN 
        SELECT team_name FROM teams where (team_person_fk = people_id);
    END$$

DELIMITER ;
