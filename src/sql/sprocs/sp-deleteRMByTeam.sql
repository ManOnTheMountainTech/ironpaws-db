DROP procedure IF EXISTS `sp_deleteRMByTeam`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_deleteRM`(IN person_id INT)
    READS SQL DATA
    SQL SECURITY DEFINER
    COMMENT 'Deletes the specified race manager given a person ID. v 0.002'
BEGIN        
    DELETE FROM race_managers WHERE (rm_person_fk = person_id);

    /*        #SELECT * FROM team_clones;
        #SELECT * FROM race_instances;
        #SELECT * FROM race_managers;

        DELETE FROM race_managers WHERE (rm_race_instances_fk IN (
            SELECT rm_id_ai FROM (
            (SELECT rm_id_ai FROM team_clones tc
                JOIN race_instances ri ON (ri_team_fk = tc.team_id)
                JOIN race_managers rm ON (rm.rm_race_instances_fk = ri.id_ri_ai)) as qo))); */
END$$

DELIMITER ;