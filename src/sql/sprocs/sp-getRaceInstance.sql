DROP PROCEDURE IF EXISTS `sp_getRaceInstance`;

DELIMITER $$
CREATE PROCEDURE `sp_getRaceInstance`(
	IN wc_prod_id_arg INT)
BEGIN
    SELECT DISTINCT id_ri_ai FROM race_instances WHERE (wc_prod_id_ri = wc_prod_id_arg);
END$$

DELIMITER ;