DROP PROCEDURE IF EXISTS `sp_getRDIdxFromRIByWC`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getRDIdxFromRIByWC`(
	IN wc_prod_id_arg INT)
BEGIN
    SELECT DISTINCT rsd_race_def_fk FROM race_instances WHERE (wc_prod_id_ri = wc_prod_id_arg);
END$$

DELIMITER ;