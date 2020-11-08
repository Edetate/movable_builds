scoreboard players operation $current_id mb_build_id = @s mb_cur_build_id
execute as @e[type=armor_stand,tag=edta_movable_build] if score @s mb_build_id = $current_id mb_build_id run kill @s

execute as @a if score $current_id mb_build_id matches 1.. run function movable_builds:cleanup/kill_tools
function movable_builds:extras/no_command_fb