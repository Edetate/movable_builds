scoreboard players operation $current_ppl_id edta_mb_ppl_id = @s edta_mb_ppl_id
execute as @e[type=armor_stand,tag=edta_movable_build, tag=edta_mb_marker] if score @s edta_mb_ppl_id = $current_ppl_id edta_mb_ppl_id run kill @s
function movable_builds:extras/no_command_fb