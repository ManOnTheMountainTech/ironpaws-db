CREATE 
    ALGORITHM = UNDEFINED 
    SQL SECURITY INVOKER

    # Need to do by race
    # update race results upon entering race time or on:
    #   race instance creation
    #
VIEW `roster` AS
    SELECT 
        `teams`.`team_bib_number`,
        `name_tn`, 
        `salutation`,
        `wc_customer_id`,
        `team_class_id`
    FROM
        `teams`
        JOIN `team_name` `tn` ON (`teams`.`team_tn_fk` = `tn`.`id_tn_ai`)
        JOIN `people` ON (`teams`.`team_person_fk` = `people`.`person_id_ai`)
    GROUP BY 
    	`teams`.`team_bib_number`, 
        tn.name_tn, 
        people.salutation,
        team_class_id,
        wc_customer_id;