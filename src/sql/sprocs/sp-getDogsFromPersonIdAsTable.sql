DROP procedure IF EXISTS `sp_getDogsFromPersonIdAsTable`;

DELIMITER $$
CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getDogsFromPersonIdAsTable`(IN person_id INT)
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT 'Gets the dogs owned by this person as a table.'
BEGIN
    CREATE TEMPORARY TABLE dog_clones(
        dog_id INT PRIMARY KEY
    );
    
    INSERT INTO dog_clones(dog_id)
    	SELECT dog_id_ai FROM dogs WHERE dog_person_fk = person_id;
END$$

DELIMITER ;