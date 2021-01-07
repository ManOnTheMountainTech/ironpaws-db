			   
SELECT team_bib_number, name_tn, salutation, person_name, name_rc, state_iso_code_wa, country_iso_code_wa from teams
join team_name tn on (team_tn_fk = tn.id_tn_ai)
join people on (team_person_fk = person_id_ai)
join world_addresses wa on (person_address_fk = id_wa_ai)
join race_classes rc on (team_class_fk = id_rc_ai)
group by team_bib_number;