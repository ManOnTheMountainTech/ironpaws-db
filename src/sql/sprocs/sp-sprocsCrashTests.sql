CALL sp_getTeamsFromPersonIdAsTable(4);
SELECT * from team_clones;

CALL sp_getDogsFromPersonIdAsTable(4);
SELECT * from dog_clones;

CALL sp_getPersonUsingWCOrderID(1);

CALL sp_deletePerson(100);