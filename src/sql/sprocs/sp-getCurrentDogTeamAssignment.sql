/* Lily, Bert, Fred */
CREATE sp_getCurrentDog_TeamAssignment(IN VARCHAR(65535) doggies)

BEGIN
    SET @sql = CONCAT('SELECT dogs.dog_name, team_name.name_tn FROM dogs INNER JOIN dog_team_assignments on (dog_id = dta_dog_id_fk) INNER JOIN teams ON (dta_team_fk = teams.team_id_ai) INNER JOIN team_name ON (teams.team_tn_fk = team_name.id_tn_ai) WHERE dog_name IN (', doggies, ')');
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END

/*USE bryany_mush;
SELECT dogs.dog_name, team_name.name_tn
FROM dogs 
INNER JOIN dog_team_assignments on (dog_id = dta_dog_id_fk)
INNER JOIN teams ON (dta_team_fk = teams.team_id_ai)
INNER JOIN team_name ON (teams.team_tn_fk = team_name.id_tn_ai)

WHERE dog_name = 'TeeWee';*/