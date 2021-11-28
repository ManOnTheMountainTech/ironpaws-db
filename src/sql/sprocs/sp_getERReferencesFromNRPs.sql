DROP PROCEDURE IF EXISTS `sp_getERReferencesFromNRPs`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getERReferencesFromNRPs`(IN `erIdx` INT UNSIGNED)
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'Gets all rows that have the ER reference'
SELECT nrp_people_fk FROM `non_racing_participation` WHERE (erIdx = nrp_er_fk)$$
DELIMITER ;