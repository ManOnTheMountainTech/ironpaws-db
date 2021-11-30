DROP PROCEDURE IF EXISTS `sp_addNRP`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_addNRP`(IN `person_id` INT UNSIGNED, IN `er_id` INT UNSIGNED)
    MODIFIES SQL DATA
    DETERMINISTIC
    COMMENT 'Inserts a volunteer entry into the NRP table'
BEGIN
	INSERT INTO `non_racing_participation`(`nrp_people_fk`,`nrp_er_fk`) 
    	VALUES (person_id,er_id);
END$$
DELIMITER ;