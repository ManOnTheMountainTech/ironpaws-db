DROP PROCEDURE IF EXISTS `sp_getAllRaceInstanceInfo`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getAllRaceInstanceInfo`(
	IN wc_prod_id_arg INT)
BEGIN
    SELECT DISTINCT id_ri_ai, name_ri, ri_race_defs_fk, start_date_time_ri 
        FROM race_instances WHERE (wc_prod_id_ri = wc_prod_id_arg);
END$$

DELIMITER ;