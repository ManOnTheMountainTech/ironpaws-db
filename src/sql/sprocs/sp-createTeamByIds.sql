DELIMITER $$
CREATE PROCEDURE `sp_createTeamByIds`(
	IN teamName_id INT,
    IN teamPerson_id INT,
    IN teamClass_id VARCHAR(255))
BEGIN
	INSERT INTO teams(`team_tn_fk`, `team_person_fk`, `team_class_fk`)
		VALUES (teamName_id, teamPerson_id, teamClass_id);
	SELECT LAST_INSERT_ID();	
END$$

DELIMITER ;