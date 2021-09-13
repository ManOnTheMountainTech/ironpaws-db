DROP procedure IF EXISTS `sp_getPersonFromWCOrderIdAsTable`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getPersonFromWCOrderIdAsTable`(IN wc_customerIdArg INT)
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Retrieves a temp table of the person s entries a WP/WC user Id.'
BEGIN
    CREATE TEMPORARY TABLE people_clones(
        person_id_ai INT PRIMARY KEY
    );
    
    INSERT INTO people_clones(person_id_ai)
    	SELECT person_id_ai
        FROM people
        WHERE (wc_customer_id = wc_customerIdArg);
END$$

DELIMITER ;