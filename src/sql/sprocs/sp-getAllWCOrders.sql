DROP PROCEDURE IF EXISTS `sp_getAllWCOrders`;

DELIMITER $$
CREATE PROCEDURE `sp_getAllWCOrders`()
BEGIN
    SELECT `wc_order_id_trse` FROM `team_race_stage_entry`;
END$$

DELIMITER ;