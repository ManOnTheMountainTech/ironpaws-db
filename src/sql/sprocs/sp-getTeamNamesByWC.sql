DROP PROCEDURE IF EXISTS 'sp_getTeamNamesByWC'

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getTeamNamesByWC`(IN `wcCustomerIdArg` INT UNSIGNED)
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'Utility to get the teams that a wc customer owns'
BEGIN
SELECT name_tn, team_id_ai from team_name
	join teams on (team_tn_fk = id_tn_ai)
    join people on (team_person_fk = person_id_ai) WHERE
    (wc_customer_id = wcCustomerIdArg);
END$$
DELIMITER ;