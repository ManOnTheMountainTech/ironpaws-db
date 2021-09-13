DROP procedure IF EXISTS `sp_newPersonUsingWCOrderID`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_newPersonUsingWCOrderID`(IN salutation VARCHAR(255), IN wc_customerId INT)
    MODIFIES SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT 'Inserts into people using wc_customerId to sparsly populate'
BEGIN
	INSERT INTO people (`salutation`, `wc_customer_id`) 
    VALUES (salutation, wc_customerId);
	SELECT LAST_INSERT_ID();
END$$

DELIMITER ;
