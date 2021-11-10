DROP FUNCTION IF EXISTS `sf_getRSDFromTRSEByBibNumber`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` FUNCTION `sf_getRSDFromTRSEByBibNumber`(`raceStage` INT UNSIGNED, `bibNumber` INT UNSIGNED, `prodId` INT UNSIGNED) RETURNS int unsigned
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'Returns the RSD given the bib number v0.1.'
BEGIN
    RETURN (SELECT trse_rsd_fk FROM `team_race_stage_entry` 
        JOIN teams on (team_race_stage_entry.trse_team_fk = teams.team_id_ai)
        JOIN race_stage_defs rsd on (trse_rsd_fk = id_rsd_ai)
        JOIN race_defs rd on (rsd.rsd_race_def_fk = rd.id_rd_ai)
        JOIN race_instances ri on (rd.id_rd_ai = ri.ri_race_defs_fk) 
        WHERE ((raceStage = rsd.stage_rsd) AND 
               (bibNumber = teams.team_bib_number) AND 
               (prodId = ri.wc_prod_id_ri)));	
END$$
DELIMITER ;