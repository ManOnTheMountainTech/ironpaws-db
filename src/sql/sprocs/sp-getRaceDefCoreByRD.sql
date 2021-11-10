DROP PROCEDURE IF EXISTS `sp_getRaceDefCoreByRD`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getRaceDefCoreByRD`(
	IN id_rd_arg INT)
BEGIN
    SELECT stages_rd, rd_master_num_days_per_stage, rd_race_type 
        FROM `race_defs` WHERE (id_rd_ai = id_rd_arg);
END$$

DELIMITER ;