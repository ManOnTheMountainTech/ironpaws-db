DROP PROCEDURE IF EXISTS `sp_getNumErRefsFromNRP`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getNumErRefsFromNRP`(IN `erIdx` INT UNSIGNED)
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'Get the number of FKs that point to the ER'
select count(nrp_people_fk) FROM non_racing_participation where (nrp_er_fk = erIdx)$$
DELIMITER ;