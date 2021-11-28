DROP PROCEDURE IF EXISTS `sp_getERContents`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getERContents`(IN `id` INT UNSIGNED)
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'Gets the name that corresponds to the id from external refs.'
BEGIN
	SELECT er_name, er_type from external_refs
    WHERE (er_ai = id);
END$$
DELIMITER ;