DROP procedure IF EXISTS `sp_newPersonUsingWCOrderID`;

DELIMITER $$
CREATE  PROCEDURE `sp_newPersonUsingWCOrderID`(IN salutation VARCHAR(255), IN wc_customerId INT, IN argLanguage INT)
    MODIFIES SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT 'Inserts into people using wc_customerId to sparsly populate'
BEGIN
	INSERT INTO people (`salutation`, `wc_customer_id`, `language`) 
    VALUES (salutation, wc_customerId, argLanguage);
	SELECT LAST_INSERT_ID();
END$$

DELIMITER ;
