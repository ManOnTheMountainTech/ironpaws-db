DROP FUNCTION IF EXISTS `sf_getRSDIndexByWCAndStage`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` FUNCTION `sf_getRSDIndexByWCAndStage` (wcOrderId INT, raceStage INT)
RETURNS INT
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT 'Gets auto incremented index by wc product id and stage from the race stage definition table v0.3.'
BEGIN
RETURN (SELECT trse_rsd_fk FROM `team_race_stage_entry`
	JOIN race_stage_defs on (trse_rsd_fk = id_rsd_ai)
    where ((wcOrderId = wc_order_id_trse) && (raceStage = stage_rsd)));
END$$

DELIMITER ;