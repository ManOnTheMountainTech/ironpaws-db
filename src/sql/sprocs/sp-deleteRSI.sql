DROP procedure IF EXISTS `sp_deleteRSI`;

DELIMITER $$
CREATE  PROCEDURE `sp_deleteRSI`()
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Deletes the specified race stage instance given a person ID. v 0.002'
BEGIN        
        DELETE FROM race_stage_instances WHERE (id_rsi_ai IN (
            SELECT id_rsi_ai FROM (
            (SELECT id_rsi_ai FROM team_clones tc
                JOIN race_stage_instances rsi ON (rsi.rsi_race_instance_fk = ri.id_ri_ai)) as qo)));
END$$

DELIMITER ;