DROP PROCEDURE `sp_initTRSE`; 
CREATE DEFINER=`cpses_brczeadtm1`@`localhost` 
PROCEDURE `sp_initTRSE`(IN `wc_orderId` INT, IN `raceStageInstance_fk` INT, IN `team_fk` INT) 
    COMMENT 'Initialized a Team Race Stage Instance' 
    DETERMINISTIC MODIFIES SQL DATA 
    SQL SECURITY INVOKER 
    BEGIN 
        INSERT INTO team_race_stage_entry (`trse_race_stage_instance_fk`, `trse_team_fk`, `wc_order_id_trse`) 
        VALUES (raceStateInstance_fk, team_fk, wc_orderId); 
END