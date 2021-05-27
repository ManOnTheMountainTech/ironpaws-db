DROP PROCEDURE IF EXISTS sp_getMushersTeamNames;

DELIMITER $$
#USE `bryan_mush`$$
CREATE PROCEDURE `sp_getMushersTeamNames`(IN wc_customerId INT)
    COMMENT 'Gets the names of the teams the musher has created' 
    DETERMINISTIC READS SQL DATA 
    SQL SECURITY INVOKER 
    BEGIN 
        SELECT team_name.id_tn_ai, team_name.name_tn FROM people 
            INNER JOIN teams ON (teams.team_person_fk = people.person_id_ai) 
            INNER JOIN team_name ON (team_name.id_tn_ai = teams.team_tn_fk) 
                WHERE people.wc_customer_id = wc_customerId; 
    END$$

DELIMITER ;
