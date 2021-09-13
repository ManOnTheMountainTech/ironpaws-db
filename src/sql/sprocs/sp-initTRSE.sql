DROP procedure IF EXISTS `sp_initTRSE`;

DELIMITER $$

CREATE DEFINER=`bryan`@`localhost`  PROCEDURE `sp_initTRSE` (IN wc_orderId_arg INT, IN wcProdId INT, IN team_fk_arg INT, IN stage INT)
BEGIN
	insert into team_race_stage_entry (trse_rsd_fk, wc_order_id_trse, trse_team_fk)
		values(
			(SELECT id_rsd_ai FROM race_stage_defs
			JOIN race_defs on (rsd_race_def_fk = id_rd_ai)
			JOIN race_instances on (ri_race_defs_fk = id_rd_ai)
			where ((stage = stage_rsd) && (wcProdId = wc_prod_id_ri))),
				wc_orderId_arg,
				team_fk_arg);
	SELECT LAST_INSERT_ID();
END$$

DELIMITER ;