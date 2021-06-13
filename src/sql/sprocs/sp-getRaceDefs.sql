DROP PROCEDURE IF EXISTS `sp_getNumRaceStagesFromRD`;

DELIMITER $$
CREATE PROCEDURE `sp_getNumRaceStagesFromRD`(
	IN race_defs_arg INT)
BEGIN
    SELECT DISTINCT stages_rd FROM race_defs WHERE (race_defs_arg = id_rd_ai);
END$$

DELIMITER ;