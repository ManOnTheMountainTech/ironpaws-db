DROP procedure IF EXISTS `sp_deleteRI`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_deleteRI`()
    READS SQL DATA
    SQL SECURITY DEFINER
    COMMENT 'Deletes the specified race instance given a person ID. v 0.001'
BEGIN
    CREATE TEMPORARY TABLE race_instance_clones(
        id_ri INT PRIMARY KEY
    );

    INSERT INTO race_instance_clones(id_ri)
    (SELECT id_ri_ai FROM
        (SELECT id_ri_ai FROM race_instances as qi
            JOIN team_clones ON (ri_team_fk = team_id)) as qo);

    DELETE FROM race_instances WHERE ri_team_fk IN (SELECT * FROM race_instance_clones);

    SELECT ROW_COUNT();
END$$

DELIMITER ;