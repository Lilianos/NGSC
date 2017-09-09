/* Ajout du renvoi de sort au lancement du combat */
insert into `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) values('702305','7023','4','0','100','0','0','0','0','0','11','9941','0','0','0','0','0','0','0','0','0','0','Obsidian Sentinel - Cast Obsidian Reflexion');
insert into `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) values('720901','7209','4','0','100','0','0','0','0','0','11','9941','0','0','0','0','0','0','0','0','0','0','Obsidian Shard - Cast Obsidian Reflexion');
UPDATE `mangos`.`creature_template` SET `AIName`='EventAI' WHERE `Entry`=7029; 

/* Ajout du debuff et changement de taille à chaque division */
UPDATE `mangos`.`creature_ai_scripts` SET `action2_type`='11', `action2_param1`='10072' WHERE `id`=702301 OR `id`=702302 OR `id`=702303 OR `id`=702304;

/* Effect 42 summon guardian ne permet pas le link */
UPDATE `mangos`.`spell_template` SET `Effect1`='41' WHERE `Id`=10061;

/* Despawn des add en cas d'evade du boss */
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('7209','70','7023','4096','0');