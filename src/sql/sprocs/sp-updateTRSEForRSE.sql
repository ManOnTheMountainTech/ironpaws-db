DROP PROCEDURE IF EXISTS `sp_updateTRSEForRSE`;

DELIMITER $$
CREATE PROCEDURE `sp_updateTRSEForRSE`( 
    IN wc_order_id_trse_arg INT,
    IN miles_trse_arg FLOAT(1), 
    IN outcome_trse_arg ENUM('completed','dropped','incomplete','disqualified','completed_too_late','untimed'),
    IN eleapsed_time_arg TIME,
    IN stage_trse_arg INT,
    IN when_completed_trse_arg DATETIME)
BEGIN
    update team_race_stage_entry 
    SET
        `miles_trse` = miles_trse_arg,
        `outcome_trse` = outcome_trse_arg,
        `elapsed_time` = eleapsed_time_arg,
        `stage_trse` = stage_trse_arg,
        `when_completed_trse` = when_completed_trse_arg
    where ((wc_order_id_trse = wc_order_id_trse_arg) && 
        (stage_trse = stage_trse_arg));
END$$

DELIMITER ;