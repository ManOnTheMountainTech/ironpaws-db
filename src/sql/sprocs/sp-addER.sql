DROP PROCEDURE IF EXISTS `sp_addER`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_addER`(IN `name` VARCHAR(16383))
    MODIFIES SQL DATA
    DETERMINISTIC
    COMMENT 'Adds a name to the external reference table'
BEGIN
    INSERT INTO external_refs (`er_name`) VALUES (name);
    SELECT LAST_INSERT_ID();	
END$$
DELIMITER ;