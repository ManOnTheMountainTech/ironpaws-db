DROP procedure IF EXISTS `sp_initTRSE`;

DELIMITER $$

CREATE PROCEDURE `sp_initTRSE` (IN wc_orderId INT, IN team_fk INT, IN stage_trse_arg INT)
BEGIN
	INSERT INTO team_race_stage_entry (`trse_team_fk`, `wc_order_id_trse`, `stage_trse`) 
	VALUES (team_fk, wc_orderId, stage_trse_arg);
	SELECT LAST_INSERT_ID();
END$$

DELIMITER ;