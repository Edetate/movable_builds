scoreboard players set @s mb_use_item 0

execute store result score @s mb_use_type run data get entity @s SelectedItem.tag.mb-use-type
execute if score @s mb_use_type matches 1 anchored eyes run function movable_builds:scan/ray_scan
execute if score @s mb_use_type matches 2 anchored eyes run function movable_builds:move/move_where_looking
execute if score @s mb_use_type matches 3 anchored eyes run function movable_builds:tools/mark
execute if score @s mb_use_type matches 4 anchored eyes run function movable_builds:tools/ignore
