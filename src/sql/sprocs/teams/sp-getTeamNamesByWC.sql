DROP PROCEDURE IF EXISTS `sp_getTeamNamesByWC`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getTeamNamesByWC`(IN `wcCustomerIdArg` INT UNSIGNED)
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'Utility to get the teams that a wc customer owns'
BEGIN
SELECT team_name from teams
    join people on (team_person_fk = person_id_ai) WHERE
    (wc_customer_id = wcCustomerIdArg);
END$$
DELIMITER ;