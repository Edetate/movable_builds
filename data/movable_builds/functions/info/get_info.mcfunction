scoreboard players operation $current_id mb_build_id = @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part,distance=..1,limit=1] mb_build_id
scoreboard players operation $id_to_kill mb_build_id = $current_id mb_build_id
team join edta_mb_center @e[type=minecraft:armor_stand, tag=edta_movable_build, tag=center]
tellraw @s [{"text":"ID is ","color":"aqua"},{"score":{"name":"$current_id","objective":"mb_build_id"},"color":"aqua"},{"text":"   ","color":"aqua"},{"text":"[Kill]","color":"blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function movable_builds:cleanup/kill_last"}}]
execute as @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part] if score @s mb_build_id = $current_id mb_build_id run effect give @s glowing 5