DROP PROCEDURE IF EXISTS `sp_getNRPsThatContainErRef`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getNRPsThatContainErRef`(IN `erRefId` INT UNSIGNED)
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'Gets all the NRPs that have the erRef'
SELECT id_event_nrp, date_completed FROM non_racing_participation WHERE (nrp_er_fk = erRefId)$$
DELIMITER ;