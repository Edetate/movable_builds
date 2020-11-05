execute store result score $current_rotation mb_ver_rot run data get entity @s Rotation[1] 10000

execute if score $current_use_type mb_use_type matches 6 run function movable_builds:move/control/rotate
execute if score $current_use_type mb_use_type matches 7 run function movable_builds:move/control/rel_move
execute if score $current_use_type mb_use_type matches 8 run function movable_builds:move/control/abs_move