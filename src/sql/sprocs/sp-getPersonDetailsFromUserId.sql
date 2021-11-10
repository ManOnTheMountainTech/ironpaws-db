DROP procedure IF EXISTS `sp_getPersonDetailsFromUserId`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getPersonDetailsFromUserId`(IN customerIdArg INT)
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY DEFINER
    COMMENT 'Gets the persion id from a WP/WC user Id.'
BEGIN
    SELECT person_id_ai, people_distance_unit from people WHERE customerIdArg = wc_customer_id;
END$$

DELIMITER ;