CREATE PROCEDURE `sp_singleArgCheckTest`(IN `arg` INT) 
COMMENT 'Test if passing in 1 argument works' 
DETERMINISTIC NO SQL 
SQL SECURITY DEFINER
BEGIN 
    SELECT arg; 
END