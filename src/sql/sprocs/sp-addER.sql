DROP PROCEDURE IF EXISTS `sp_addER`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_addER`(IN `name` VARCHAR(16383), IN `type` ENUM('social_event','facebook_video','howleday','volunteer_ironpaws_race','volunteer_external'))
    MODIFIES SQL DATA
    DETERMINISTIC
    COMMENT 'Adds a name to the external reference table'
BEGIN
    INSERT INTO external_refs (`er_name`, `er_type`) VALUES (name, type);
    SELECT LAST_INSERT_ID();	
END$$
DELIMITER ;