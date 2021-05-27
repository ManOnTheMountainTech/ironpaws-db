DROP procedure IF EXISTS `sp_deleteRSI`;

DELIMITER $$
CREATE  PROCEDURE `sp_deleteRSI`()
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Deletes the specified race stage instance given a person ID. v 0.002. Not tested.'
BEGIN        
        DELETE FROM race_stage_instances rsi (
            SELECT id_rsi_ai FROM (
            (SELECT id_rsi_ai FROM team_clones tc
                JOIN race_instances ri ON (rsi.rsi_race_instance_fk = ri.id_ri_ai)) as qo))
                WHERE (wc_prod_id_ri = wc_prod_id_arg);
END$$

DELIMITER ;