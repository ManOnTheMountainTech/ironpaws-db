DROP PROCEDURE IF EXISTS `sp_getNumRaceStagesByRD`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getNumRaceStagesByRD`(
	IN id_rd_arg INT)
BEGIN
    SELECT stages_rd FROM `race_defs` WHERE (id_rd_ai = id_rd_arg);
END$$

DELIMITER ;