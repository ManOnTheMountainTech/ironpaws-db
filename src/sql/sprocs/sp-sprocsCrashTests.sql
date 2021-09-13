DROP procedure IF EXISTS `sp_sprocsCrashTests`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_sprocsCrashTests`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT 'Basic crash tests'
BEGIN
    CALL sp_getTeamsFromPersonIdAsTable(4);
    SELECT * from team_clones;

    CALL sp_getDogsFromPersonIdAsTable(4);
    SELECT * from dog_clones;

    CALL sp_deletePerson(100);
END$$
DELIMITER ;