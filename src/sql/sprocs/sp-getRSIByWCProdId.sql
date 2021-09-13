DROP PROCEDURE IF EXISTS `sp_getRSIByWCProdId`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getRSIByWCProdId`(
	IN wc_prod_id_arg INT)
BEGIN
    select id_rsi_ai from race_stage_instances
	join race_instances on (id_ri_ai = rsi_race_instance_fk)
    where (wc_prod_id_ri = wc_prod_id_arg);
END$$

DELIMITER ;