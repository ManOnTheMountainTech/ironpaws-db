DROP procedure IF EXISTS `sp_deleteTRSE`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_deleteTRSE`()
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Deletes the specified race stage instance given a person ID. v 0.003'
BEGIN        
        DELETE FROM team_race_stage_entry WHERE (trse_team_fk IN (
            SELECT team_id FROM (
            (SELECT team_id FROM team_clones tc
                JOIN team_race_stage_entry trse ON (trse.trse_team_fk = tc.team_id)) as qo)));
END$$

DELIMITER ;