scoreboard players operation $current_id mb_build_id = @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part,distance=..1,limit=1] mb_build_id
scoreboard players operation @s mb_cur_build_id = $current_id mb_build_id
tellraw @s [{"text":"ID is ","color":"aqua"},{"score":{"name":"$current_id","objective":"mb_build_id"},"color":"aqua"},{"text":"   ","color":"aqua"},{"text":"[Kill build]","color":"blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function movable_builds:cleanup/kill_recur_init"}},{"text":"  "},{"text":"[Kill this part]","color":"blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function movable_builds:cleanup/kill_current"}},{"text":"  "},{"text":"[Get movement tools]","color":"blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function movable_builds:info/get_movement_tools"}}]

execute as @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part, tag=center] if score @s mb_build_id = $current_id mb_build_id run scoreboard players operation $current_ppl_id edta_mb_ppl_id = @s edta_mb_ppl_id
function movable_builds:info/get_ppl_info

execute as @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part] if score @s mb_build_id = $current_id mb_build_id run effect give @s glowing 5