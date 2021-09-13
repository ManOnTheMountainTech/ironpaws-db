DROP PROCEDURE IF EXISTS `sp_getAllWCOrders`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getAllWCOrders`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT 'Gets all of the WooCommerce orders v0.1.'
BEGIN
    SELECT `wc_order_id_trse` FROM `team_race_stage_entry`;
END$$

DELIMITER ;