DROP PROCEDURE IF EXISTS `sp_getNRPErId`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getNRPErId`(IN `people_id` INT UNSIGNED)
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'Gets the ER id from the NRP given a people id.'
select nrp_er_fk from non_racing_participation 
	where (nrp_people_fk = people_id)$$
DELIMITER ;