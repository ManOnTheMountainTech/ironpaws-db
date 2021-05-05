DROP procedure IF EXISTS `sp_deleteDTA`;

DELIMITER $$
CREATE  PROCEDURE `sp_deleteDTA`(IN wc_customerIdArg INT)
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Deletes the dog table assignment from a WP/WC user Id.'
BEGIN
    DELETE FROM dog_team_assignments WHERE id_of_assignment_dta IN
	(SELECT id_of_assignment_dta from 
        (SELECT id_of_assignment_dta from people AS qi
            JOIN dogs AS d on (dog_people_fk = person_id_ai)
            JOIN dog_team_assignments AS dta on (dta_dog_id_fk = dog_id)
            WHERE (wc_customer_id = 5)) as qo);
END$$

DELIMITER ;