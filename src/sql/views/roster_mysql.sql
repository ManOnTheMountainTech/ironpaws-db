CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `bryany_mushuser`@`69.55.218.73` 
    SQL SECURITY DEFINER
VIEW `roster` AS
    SELECT 
        `teams`.`team_bib_number` AS `team_bib_number`,
        `tn`.`name_tn` AS `name_tn`,
        `people`.`salutation` AS `salutation`,
        `people`.`person_name` AS `person_name`,
        `rc`.`name_rc` AS `name_rc`,
        `wa`.`state_iso_code_wa` AS `state_iso_code_wa`,
        `wa`.`country_iso_code_wa` AS `country_iso_code_wa`
    FROM
        ((((`teams`
        JOIN `team_name` `tn` ON ((`teams`.`team_tn_fk` = `tn`.`id_tn_ai`)))
        JOIN `people` ON ((`teams`.`team_person_fk` = `people`.`person_id_ai`)))
        JOIN `world_addresses` `wa` ON ((`people`.`person_address_fk` = `wa`.`id_wa_ai`)))
        JOIN `race_classes` `rc` ON ((`teams`.`team_class_fk` = `rc`.`id_rc_ai`)))
    GROUP BY `teams`.`team_bib_number`