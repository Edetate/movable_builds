execute store result entity @s Rotation[1] float 0.000001 run scoreboard players get $current_rotation mb_ver_rot
execute as @s[tag=edta_mb_hinge] run function movable_builds:update/remember_hinge_rotation

function movable_builds:update/remember_current_head_rotation

execute if entity @s[tag=edta_mb_tilt] run scoreboard players set $mb_root_tilted mb_boolean 1
execute if entity @s[tag=!edta_mb_tilt] run scoreboard players set $mb_root_tilted mb_boolean 2

execute as @s[tag=!edta_mb_tilt] if score $do_commit mb_boolean matches 1 run function movable_builds:update/update_next
execute as @s[tag=edta_mb_tilt] if score $do_commit mb_boolean matches 1 run function movable_builds:update/update_next_tilt

execute if score $do_commit mb_boolean matches 2 run function movable_builds:update/tag_root_to_update