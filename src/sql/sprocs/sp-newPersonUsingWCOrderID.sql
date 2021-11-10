DROP procedure IF EXISTS `sp_newPersonUsingWCOrderID`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_newPersonUsingWCOrderID`(IN `salutation` VARCHAR(255), IN `customerId` INT, IN `distanceUnit` ENUM('miles','kilometers'))
    MODIFIES SQL DATA
    DETERMINISTIC
    COMMENT 'Inserts into people using wc_customerId to sparsly populate'
BEGIN
	INSERT INTO people (`salutation`, `wc_customer_id`, `people_distance_unit`) 
    VALUES (salutation, customerId, distanceUnit);
	SELECT LAST_INSERT_ID();
END$$
DELIMITER ;