DROP FUNCTION IF EXISTS `sf_getRSDIndexByWCAndStage`;

DELIMITER $$
CREATE FUNCTION `sf_getRSDIndexByWCAndStage` (wc_prodId_arg INT, stage_trse_arg INT)
RETURNS INT
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT 'Gets auto incremented index by wc product id and stage from the race stage definition table.'
BEGIN
RETURN (select race_stage_defs.id_rsd_ai from race_stage_defs
    join race_instances on (race_instances.ri_race_defs_fk = race_stage_defs.rsd_race_def_fk)
    where ((race_stage_defs.stage_rsd = stage_trse_arg) && (race_instances.wc_prod_id_ri = wc_prodId_arg)));
END$$

DELIMITER ;