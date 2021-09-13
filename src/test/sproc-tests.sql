
CALL sp_getCurrentDog_TeamAssignment('\'TeeWee\'');

select sf_getRSDIndexByWCAndStage(316,1);

select * from team_race_stage_entry WHERE (trse_rsd_fk = sf_getRSDIndexByWCAndStage(316, 1));

call sp_updateTRSEForRSE(316,1,'completed','02:03:04.00',1,'2021-09-09 21:41:33',2);