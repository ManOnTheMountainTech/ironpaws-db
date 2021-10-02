DROP PROCEDURE IF EXISTS `sp_doesOrderHaveATeam`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_doesOrderHaveATeam`(
	IN wc_orderArg INT)
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
COMMENT 'Returns a number if a team is bound to the order v0.1.'
BEGIN
    select sf_getRSDIndexByWCAndStage(wc_orderArg, 1);
END$$

DELIMITER ;