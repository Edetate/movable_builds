execute store result score $current_id mb_build_id run data get entity @s SelectedItem.tag.mb-build-id
execute store result score @s mb_move_type run data get entity @s SelectedItem.tag.mb-move-type

execute if score @s mb_move_type matches 1 as @e[type=armor_stand,tag=edta_movable_build,tag=center] if score @s mb_build_id = $current_id mb_build_id at @s run function movable_builds:move/shift_pos_x
execute if score @s mb_move_type matches 2 as @e[type=armor_stand,tag=edta_movable_build,tag=center] if score @s mb_build_id = $current_id mb_build_id at @s run function movable_builds:move/shift_neg_x
execute if score @s mb_move_type matches 3 as @e[type=armor_stand,tag=edta_movable_build,tag=center] if score @s mb_build_id = $current_id mb_build_id at @s run function movable_builds:move/shift_pos_z
execute if score @s mb_move_type matches 4 as @e[type=armor_stand,tag=edta_movable_build,tag=center] if score @s mb_build_id = $current_id mb_build_id at @s run function movable_builds:move/shift_neg_z
execute if score @s mb_move_type matches 5 as @e[type=armor_stand,tag=edta_movable_build,tag=center] if score @s mb_build_id = $current_id mb_build_id at @s run function movable_builds:move/shift_pos_y
execute if score @s mb_move_type matches 6 as @e[type=armor_stand,tag=edta_movable_build,tag=center] if score @s mb_build_id = $current_id mb_build_id at @s run function movable_builds:move/shift_neg_y
