DROP PROCEDURE IF EXISTS `sp_updateRaceInstances`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_updateRaceInstances`( 
    IN id_rd_ai INT,
    IN name_ri_arg VARCHAR(255), 
    IN ri_race_defs_fk_arg INT, 
    IN start_date_time_ri_arg DATETIME,
    IN wc_prod_id_ri_arg INT)
BEGIN
    UPDATE race_instances
    SET name_ri = name_ri_arg,
        ri_race_defs_fk = ri_race_defs_fk_arg,
        start_date_time_ri = start_date_time_ri_arg,
        wc_prod_id_ri = wc_prod_id_ri_arg
        WHERE (id_rd_ai = id_rd_arg);
END$$

DELIMITER ;