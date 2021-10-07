DROP procedure IF EXISTS `sp_deleteDTA`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_deleteDTA`(IN personIdArg INT)
    MODIFIES SQL DATA
    SQL SECURITY DEFINER
    COMMENT 'Deletes the dog table assignment from a WP/WC user Id.'
BEGIN
    DELETE FROM dog_team_assignments WHERE id_of_assignment_dta IN
	(SELECT id_of_assignment_dta from 
        (SELECT id_of_assignment_dta from people AS qi
            JOIN dogs AS d on (dog_people_fk = person_id_ai)
            WHERE (dog_person_fk = personIdArg)) as qo);
END$$

DELIMITER ;