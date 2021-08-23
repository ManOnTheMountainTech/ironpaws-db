DROP procedure IF EXISTS `sp_deletePerson`;

DELIMITER $$
CREATE  PROCEDURE `sp_deletePerson`(IN wc_customerIdArg INT)
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Deletes a person from the database. All awards, positions, teams, and dogs are destroyed. v0.02'
BEGIN
    SET @person = sf_getPersonIdFromWPUserId(wc_customerIdArg);

    CALL sp_getTeamsFromPersonIdAsTable(@person);

    CALL sp_deleteTRSE();
    DELETE FROM `race_managers` WHERE rm_person_fk = @person;

    DELETE FROM awards_granted 
        WHERE ('team' = entity_type) AND (id_of_entity IN (SELECT * FROM team_clones));
    DROP TABLE team_clones; # Memory thriftiness
    
    CALL sp_getDogsFromPersonIdAsTable(@person); 
    DELETE FROM awards_granted 
        WHERE ('dog' = entity_type) AND (id_of_entity IN (SELECT * FROM dog_clones));  
    
    DELETE FROM awards_granted 
        WHERE ('person' = entity_type) AND (@person = id_of_entity);

    DELETE FROM dog_team_assignments WHERE dta_dog_fk IN (SELECT * FROM dog_clones);

    DELETE FROM teams WHERE team_person_fk = @person;
    DELETE FROM social_event_leaders WHERE id_sel_person_fk = @person;
    DELETE FROM region_cocaptains WHERE rc_person_fk = @person;

    DELETE FROM phones WHERE phone_person_id = @person;
    DELETE FROM non_racing_participation WHERE nrp_people_fk = @person;
    DELETE FROM dogs WHERE dog_person_fk = @person;
    DELETE FROM admins WHERE admin_person_fk = @person;
    DELETE FROM people WHERE wc_customer_id = wc_customerIdArg;
END$$

DELIMITER ;