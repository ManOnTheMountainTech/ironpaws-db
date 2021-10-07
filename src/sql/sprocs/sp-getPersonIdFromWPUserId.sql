DROP procedure IF EXISTS `sp_getPersonIdFromWPUserId`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getPersonIdFromWPUserId`(IN wc_customerIdArg INT)
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY DEFINER
    COMMENT 'Gets the persion id from a WP/WC user Id.'
BEGIN
    SELECT person_id_ai from people WHERE wc_customerIdArg = wc_customer_id;
END$$

DELIMITER ;