SELECT people.person_name, team_name.name_tn from (((dog_team_assignments 
   join teams ON (dog_team_assignments.dta_team_fk = teams.team_tn_fk)) 
      join team_name tn on ((dog_team_assignments.dta_team_fk = tn.id_tn_ai))) 
      join dogs on ((dog_team_assignments.dta_dog_id_fk = dogs.dog_id))) 
      join people on
      (teams.person_id_fk = people.person_id_ai) 
         join world_addresses on
            (people.person_address_fk = world_addresses.id_wa_ai) 
               group by tn.id_tn_ai;

SELECT * from (((((dog_team_assignments join teams ON 
   ((dog_team_assignments.dta_team_fk = teams.team_tn_fk))) 
      join teams on ((dog_team_assignments.dta_tn_fk = teams.id_tn_ai))) 
      join dogs on ((dog_team_assignments.dta_dog_id_fk = dogs.dog_id))) 
      join people on
      ((teams.team_person_fk = people.person_id))) 
         join world_addresses on
            ((people.address_fk = world_addresses.id_wa_ai))) 
               group by team_name.id_tn_ai ;			   
			   
SELECT * from dog_team_assignments 
join teams ON (dog_team_assignments.dta_team_fk = teams.team_tn_fk) 
join team_name tn on (dog_team_assignments.dta_team_fk = tn.id_tn_ai) 
join dogs on (dog_team_assignments.dta_dog_id_fk = dogs.dog_id) 
join people on (teams.team_person_fk = people.person_id_ai) 
join world_addresses on (people.person_address_fk = world_addresses.id_wa_ai) 
group by tn.id_tn_ai			   