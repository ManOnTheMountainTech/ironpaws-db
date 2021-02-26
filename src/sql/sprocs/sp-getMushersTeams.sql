DROP PROCEDURE `sp_getMushersTeams`; 
CREATE DEFINER=`cpses_br4dt3radv`@`localhost` 
PROCEDURE `sp_getMushersTeams`(IN `person` VARCHAR(255)) 
    COMMENT 'Gets the teams the musher has created' 
    DETERMINISTIC READS SQL DATA 
    SQL SECURITY INVOKER 
    BEGIN 
        SELECT team_name.name_tn FROM people 
            INNER JOIN teams ON (teams.team_person_fk = people.person_id_ai) 
            INNER JOIN team_name ON (team_name.id_tn_ai = teams.team_tn_fk) 
                WHERE people.person_name = person; 
    END 