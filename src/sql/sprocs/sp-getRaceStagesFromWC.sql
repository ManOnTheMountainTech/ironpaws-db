DROP PROCEDURE IF EXISTS `sp_getRaceStagesFromWC`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getRaceStagesFromWC`(
	IN wc_prod_id_arg INT)
BEGIN
    SELECT stages_rd FROM race_defs 
	    JOIN race_instances ON (ri_race_defs_fk = id_rd_ai)
        WHERE (wc_prod_id_ri = wc_prod_id_arg);  
END$$

DELIMITER ;