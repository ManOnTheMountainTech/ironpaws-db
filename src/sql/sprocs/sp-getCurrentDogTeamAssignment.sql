DROP PROCEDURE IF EXISTS `sp_getCurrentDog_TeamAssignment`;

BEGIN
    SET @sql = CONCAT('SELECT dogs.dog_name, teams.team_name FROM dogs INNER JOIN dog_team_assignments on (dog_id_ai = dta_dog_fk) INNER JOIN teams ON (dta_team_fk = teams.team_id_ai) WHERE dog_name IN (', doggies, ')');

    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END