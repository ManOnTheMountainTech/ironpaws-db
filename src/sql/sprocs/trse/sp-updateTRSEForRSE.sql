DROP PROCEDURE IF EXISTS `sp_updateTRSEForRSE`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_updateTRSEForRSE`( 
    IN wc_order_id_arg INT,
    IN miles_timestamp_trse_arg float, 
    IN outcome_trse_arg ENUM('completed','dropped','incomplete','disqualified','completed_too_late','untimed'),
    IN stage_trse_arg INT,
    IN run_class_id_arg INT)
    MODIFIES SQL DATA
    DETERMINISTIC
    SQL SECURITY DEFINER
    COMMENT 'Updates a team race stage entry (TRSE) v0.3'
BEGIN
    update team_race_stage_entry 
    SET
        `miles_timestamp_trse` = miles_timestamp_trse_arg,
        `outcome_trse` = outcome_trse_arg,
        `run_class_id` = run_class_id_arg
    where (trse_rsd_fk = sf_getRSDIndexByWCAndStage(wc_order_id_arg, stage_trse_arg));
END$$

DELIMITER ;