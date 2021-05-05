DROP procedure IF EXISTS `sp_deletePerson`;

DELIMITER $$
CREATE  PROCEDURE `sp_deletePerson`(IN wc_customerIdArg INT)
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Deletes a person from the database. All awards, positions, teams, and dogs are destroyed.'
BEGIN
    CALL sp_deleteDTA(wc_customerIdArg);

    DELETE FROM teams WHERE team_person_fk = wc_customerIdArg;
    DELETE FROM social_event_leaders WHERE id_sel_ai = wc_customerIdArg;
    DELETE FROM region_cocaptains WHERE rc_person_fk = wc_customerIdArg;
    DELETE FROM race_managers WHERE rm_person_fk = wc_customerIdArg;
    DELETE FROM phones WHERE phone_person_id = wc_customerIdArg;
    DELETE FROM non_racing_participation WHERE nrp_people_fk = wc_customerIdArg;

    DELETE FROM awards_granted 
        WHERE ('team' = entity_type) AND (wc_customerIdArg = id_of_entity);

    DELETE FROM dogs WHERE dog_people_fk = wc_customerIdArg;

    DELETE FROM admins WHERE admin_person_fk = wc_customerIdArg;
    DELETE FROM people WHERE wc_customer_id = wc_customerIdArg;
END$$

DELIMITER ;