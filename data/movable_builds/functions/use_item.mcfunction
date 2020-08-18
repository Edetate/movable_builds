scoreboard players set @s mb_use_item 0

execute store result score @s mb_use_type run data get entity @s SelectedItem.tag.mb-use-type
execute if score @s mb_use_type matches 1 anchored eyes run function movable_builds:scan/ray_scan
execute if score @s mb_use_type matches 2 anchored eyes run function movable_builds:move/move_where_looking