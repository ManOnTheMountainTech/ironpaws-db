DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getERId`(IN `name` VARCHAR(255), IN `type` ENUM('social_event','facebook_video','howleday','volunteer_ironpaws_race','volunteer_external'))
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'Gets the ER id given the other table parameters.'
SELECT er_ai from external_refs where (er_name = name AND er_type = type)$$
DELIMITER ;