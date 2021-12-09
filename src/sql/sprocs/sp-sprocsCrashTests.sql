DROP procedure IF EXISTS `sp_sprocsCrashTests`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_sprocsCrashTests`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY DEFINER
    COMMENT 'Basic crash tests'
BEGIN
    CALL sp_newPersonUsingWCOrderId(9999);
    set @newPerson := LAST_INSERT_ID();

    CALL sp_createNewTeam ("FrankenDogs", @newPerson, 2);

    CALL sp_getTeamsFromPersonIdAsTable(@newPerson);

    CALL sp_getDogsFromPersonIdAsTable(@newPerson);

    CALL sp_deletePerson(@newPerson);
END$$
DELIMITER ;