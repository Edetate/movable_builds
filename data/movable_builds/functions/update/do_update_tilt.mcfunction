#1=left(pos-x, 2=right(neg-x), 3=front(pos-z), 4=back(neg-z), 5=up, 6=down
execute if score @s mb_build_side matches 4 run tp ^.6 ^ ^
execute if score @s mb_build_side matches 3 run tp ^-.6 ^ ^
execute if score @s mb_build_side matches 1 run tp ^ ^ ^.6
execute if score @s mb_build_side matches 2 run tp ^ ^ ^-.6
execute if score @s mb_build_side matches 5 run tp ^ ^.6 ^
execute if score @s mb_build_side matches 6 run tp ^ ^-.6 ^
execute if score @s mb_build_side matches 7 run tp @s ~ ~0.95 ~ ~ ~

execute as @s[tag=!edta_mb_hinge] store result entity @s Rotation[1] float 0.000001 run scoreboard players get $current_rotation mb_ver_rot

execute as @s[tag=edta_mb_hinge] run function movable_builds:update/hinge_update
execute as @s[tag=!edta_mb_hinge] run function movable_builds:update/update_next_tilt