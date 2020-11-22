scoreboard players operation @s mb_parent_rot = $current_rotation mb_ver_rot
scoreboard players operation @s mb_par_head_rot = $head_rotation mb_ver_rot

execute store result score $old_rotation mb_hor_rot run data get entity @s Rotation[0] 10000

scoreboard players operation $new_rotation mb_hor_rot = $old_rotation mb_hor_rot

scoreboard players operation $new_rotation mb_hor_rot += @s mb_hor_rot
scoreboard players operation $current_rotation mb_ver_rot += @s mb_ver_rot

execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get $new_rotation mb_hor_rot
execute store result entity @s Rotation[1] float 0.000001 run scoreboard players get $current_rotation mb_ver_rot

function movable_builds:update/do_update_position

scoreboard players operation $current_rotation mb_ver_rot = @s mb_parent_rot
scoreboard players operation $head_rotation mb_ver_rot = @s mb_par_head_rot
