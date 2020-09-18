scoreboard players set @s mb_use_item 0

execute store result score @s mb_use_type run data get entity @s SelectedItem.tag.mb-use-type
execute if score @s mb_use_type matches 1 anchored eyes run function movable_builds:scan/ray_scan
execute if score @s mb_use_type matches 2 anchored eyes run function movable_builds:move/move_where_looking
execute if score @s mb_use_type matches 3 anchored eyes run function movable_builds:tools/mark
execute if score @s mb_use_type matches 4 anchored eyes run function movable_builds:tools/ignore
execute if score @s mb_use_type matches 5 anchored eyes run function movable_builds:tools/info
execute if score @s mb_use_type matches 6 run function movable_builds:tools/move/rotate
execute if score @s mb_use_type matches 7 run function movable_builds:tools/move/rel_move
execute if score @s mb_use_type matches 8 run function movable_builds:tools/move/abs_move
execute if score @s mb_use_type matches 9 run function movable_builds:tools/separator/separator