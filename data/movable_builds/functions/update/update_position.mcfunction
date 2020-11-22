execute store result entity @s Rotation[1] float 0.000001 run scoreboard players get $current_rotation mb_ver_rot
execute as @s[tag=edta_mb_hinge] run function movable_builds:update/remember_hinge_rotation

execute if score $do_commit mb_boolean matches 1 run function movable_builds:update/do_update_position


execute if score $do_commit mb_boolean matches 2 run function movable_builds:update/tag_root_to_update