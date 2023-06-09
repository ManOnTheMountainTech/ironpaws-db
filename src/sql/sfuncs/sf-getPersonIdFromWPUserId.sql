DROP FUNCTION IF EXISTS `sf_getPersonIdFromWPUserId`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` FUNCTION `sf_getPersonIdFromWPUserId`(wc_customerIdArg INT)
RETURNS INT
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT 'Gets the persion id from a WP/WC user Id.'
BEGIN
    RETURN (SELECT person_id_ai from people WHERE wc_customerIdArg = wc_customer_id);
END$$

DELIMITER ;