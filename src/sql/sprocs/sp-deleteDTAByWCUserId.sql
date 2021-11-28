DROP procedure IF EXISTS `sp_deleteDTAByWCUserId`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_deleteDTAByWCUserId`(IN wc_customerIdArg INT)
    MODIFIES SQL DATA
    SQL SECURITY DEFINER
    COMMENT 'Deletes the dog table assignment from a WP/WC user Id.'
BEGIN
    DELETE FROM dog_team_assignments WHERE dta_id_ai IN
	(SELECT id_of_assignment_dta from 
        (SELECT id_of_assignment_dta from people AS qi
            JOIN dogs AS d on (dog_people_fk = person_id_ai)
            JOIN dog_team_assignments AS dta on (dta_dog_fk = dog_id_ai)
            WHERE (wc_customer_id = wc_customerIdArg)) as qo);

    SELECT ROW_COUNT();
END$$

DELIMITER ;