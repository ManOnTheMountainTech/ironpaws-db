DROP PROCEDURE IF EXISTS `sp_updateTRSEByBibNumber`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_updateTRSEByBibNumber`( 
    IN prodId INT UNSIGNED,
    IN bibNumber INT UNSIGNED,
    IN milesTimestamp float UNSIGNED, 
    IN outcome ENUM('completed','dropped','incomplete','disqualified','completed_too_late','untimed'),
    IN raceStage INT UNSIGNED,
    IN runClass INT UNSIGNED)
    MODIFIES SQL DATA
    DETERMINISTIC
    SQL SECURITY DEFINER
    COMMENT 'Updates a team race stage entry (TRSE) by bib number v0.1'
BEGIN
    update team_race_stage_entry 
    SET
        `miles_timestamp_trse` = milesTimestamp,
        `outcome_trse` = outcome,
        `run_class_id` = runClass
    where (trse_rsd_fk = sf_getRSDFromTRSEByBibNumber(raceStage, bibNumber, prodId));
END$$

DELIMITER ;