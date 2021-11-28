DROP PROCEDURE IF EXISTS `sp_addER`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` C`(IN `erIdxArg` INT UNSIGNED, OUT `rows_changed` INT UNSIGNED)
    MODIFIES SQL DATA
    DETERMINISTIC
    COMMENT 'Deletes an external reference entry by name, v 0.001.'
BEGIN
    DELETE FROM `external_refs` WHERE (`er_ai` = erIdxArg);
    SET rows_changed = ROW_COUNT();
END$$
DELIMITER ;