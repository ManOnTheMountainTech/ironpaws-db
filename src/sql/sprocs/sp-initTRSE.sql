DROP procedure IF EXISTS `sp_initTRSE`;

DELIMITER $$

CREATE PROCEDURE `sp_initTRSE` (IN wc_orderId_arg INT, IN wc_prodId_arg INT, IN team_fk_arg INT, IN stage_trse_arg INT)
BEGIN
	insert into team_race_stage_entry (trse_rsd_fk, wc_order_id_trse, trse_team_fk)
		values(
			sf_getRSDIndexByWCAndStage(wc_prodId_arg, stage_trse_arg),
			wc_orderId_arg,
			team_fk_arg);
	SELECT LAST_INSERT_ID();
END$$

DELIMITER ;