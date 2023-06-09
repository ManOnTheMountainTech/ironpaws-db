DROP procedure IF EXISTS `sp_deleteNRP`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_deleteNRP`(IN `wc_customerIdArg` INT, OUT `rows_changed` INT)
    MODIFIES SQL DATA
    DETERMINISTIC
    COMMENT 'Deletes non-racing participation from a WP/WC user Id.'
BEGIN
    DELETE FROM non_racing_participation WHERE id_event_nrp IN
	(SELECT id_event_nrp from 
        (SELECT id_event_nrp from people AS qi
            JOIN non_racing_participation AS nrp on (nrp_people_fk = person_id_ai)
            WHERE (wc_customer_id = wc_customerIdArg)) as qo);

    SET rows_changed = ROW_COUNT();
END$$
DELIMITER ;