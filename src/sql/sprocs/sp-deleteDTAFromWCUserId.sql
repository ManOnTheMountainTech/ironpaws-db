DROP procedure IF EXISTS `sp_deleteDTA`;

DELIMITER $$
CREATE  PROCEDURE `sp_deleteDTA`(IN wc_personIdArg INT)
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Deletes the dog table assignment from a WP/WC user Id.'
BEGIN
    DELETE FROM dog_team_assignments WHERE id_of_assignment_dta IN
	(SELECT id_of_assignment_dta from 
        (SELECT id_of_assignment_dta from people AS qi
            JOIN dogs AS d on (dog_people_fk = person_id_ai)
            WHERE (dog_person_fk = wc_personIdArg)) as qo);
END$$

DELIMITER ;