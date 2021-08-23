DROP PROCEDURE IF EXISTS `sp_getTRSEScoreValues`;

DELIMITER $$
    CREATE PROCEDURE `sp_getTRSEScoreValues`(
        IN wc_order_id_arg INT)
    BEGIN
        SELECT team_bib_number, 
            miles_trse, # 1
            outcome_trse, 
            wc_customer_id, #3 
            team_class_id, 
            name_tn, #5
            wc_customer_id,
            run_class_id #7
        FROM `team_race_stage_entry` 
            JOIN teams ON (trse_team_fk = team_id_ai)
            JOIN team_name ON (team_tn_fk = id_tn_ai)
            JOIN people ON (team_person_fk = person_id_ai)
        WHERE 
            (wc_order_id_trse = wc_order_id_arg);
    END$$

DELIMITER ;