DROP procedure IF EXISTS `sp_initTRSE`;

DELIMITER $$

CREATE PROCEDURE `sp_initTRSE` (IN wc_orderId INT, IN raceStageInstance_fk INT, IN team_fk INT)
BEGIN
	INSERT INTO team_race_stage_entry (`trse_race_stage_instance_fk`, `trse_team_fk`, `wc_order_id_trse`) 
	VALUES (raceStageInstance_fk, team_fk, wc_orderId);
	SELECT LAST_INSERT_ID();
END$$

DELIMITER ;
