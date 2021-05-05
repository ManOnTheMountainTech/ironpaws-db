DROP procedure IF EXISTS `sp_getPersonIdFromWPUserId`;

DELIMITER $$
CREATE  PROCEDURE `sp_getPersonIdFromWPUserId`(IN wc_customerIdArg INT)
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT 'Gets the persion id from a WP/WC user Id.'
BEGIN
    SELECT person_id_ai from people WHERE wc_customerIdArg = wc_customer_id;
END$$

DELIMITER ;