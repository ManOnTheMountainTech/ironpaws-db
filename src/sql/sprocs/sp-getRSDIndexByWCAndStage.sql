DROP procedure IF EXISTS `sp_getRSDIndexByWCAndStage`;

DELIMITER $$

CREATE PROCEDURE `sp_getRSDIndexByWCAndStage` (IN wc_prodId_arg INT, IN stage_trse_arg INT)
BEGIN
select race_stage_defs.id_rsd_ai from race_stage_defs
    join race_instances on (race_instances.ri_race_defs_fk = race_stage_defs.rsd_race_def_fk)
    where ((race_stage_defs.stage_rsd = stage_trse_arg) && (race_instances.wc_prod_id_ri = wc_prodId_arg));
END$$

DELIMITER ;