DROP PROCEDURE IF EXISTS `sp_getRaceStageInstance`;

DELIMITER $$
CREATE PROCEDURE `sp_getRaceStageInstance`(
	IN wc_prod_id_arg INT)
BEGIN
    SELECT DISTINCT rsi.rsi_race_instance_fk from race_stage_instances as rsi
        JOIN race_instances ON (wc_prod_id_ri = wc_prod_id_arg)
        JOIN race_stage_instances on (rsi.rsi_race_instance_fk = id_ri_ai);	
END$$

DELIMITER ;