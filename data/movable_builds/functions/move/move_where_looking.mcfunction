scoreboard players operation $current_id mb_build_id = @s mb_cur_build_id
execute as @e[type=armor_stand,tag=edta_movable_build,tag=center] if score @s mb_build_id = $current_id mb_build_id run tp @s ^ ^ ^3 0 0
execute as @e[type=armor_stand,tag=edta_movable_build,tag=center] if score @s mb_build_id = $current_id mb_build_id anchored feet run function movable_builds:update/update_position