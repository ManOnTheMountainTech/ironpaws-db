DROP PROCEDURE IF EXISTS `sp_getNumRaceStagesByRD`;

DELIMITER $$
CREATE PROCEDURE `sp_getNumRaceStagesByRD`(
	IN id_rd_arg INT)
BEGIN
    SELECT stages_rd FROM `race_defs` WHERE (id_rd_ai = id_rd_arg);
END$$

DELIMITER ;