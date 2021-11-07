DROP PROCEDURE IF EXISTS `sp_isOrderInTRSE`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_isOrderInTRSE`(IN `wcOrderIdArg` INT UNSIGNED)
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'Given an order id, if it exists, then the order id is returned'
BEGIN
    SELECT DISTINCT wc_order_id_trse FROM team_race_stage_entry WHERE (wcOrderIdArg = wc_order_id_trse);
END$$
DELIMITER ;