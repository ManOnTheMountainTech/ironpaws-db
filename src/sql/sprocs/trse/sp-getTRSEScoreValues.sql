DROP PROCEDURE IF EXISTS `sp_getTRSEScoreValues`;

DELIMITER $$
    CREATE DEFINER=`bryan`@`localhost` PROCEDURE `sp_getTRSEScoreValues`(
        IN wc_order_id_arg INT)
    BEGIN
        SELECT team_bib_number, #0
            miles_timestamp_trse, #1
            outcome_trse, #2
            wc_customer_id,
            team_class_id, #4
            team_name, #5
            run_class_id, #6
            people_distance_unit #7
        FROM `team_race_stage_entry` 
            JOIN teams ON (trse_team_fk = team_id_ai)
            JOIN people ON (team_person_fk = person_id_ai)
        WHERE 
            (wc_order_id_trse = wc_order_id_arg);
    END$$

DELIMITER ;