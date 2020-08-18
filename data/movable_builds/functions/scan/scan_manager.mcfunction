scoreboard players add $current_layer mb_layer 1

execute as @e[type=armor_stand,tag=edta_movable_build,tag=next_to_scan] at @s run function movable_builds:scan/scan_next

execute as @e[type=armor_stand,tag=edta_movable_build] if score @s mb_build_id = $id_pool mb_build_id if score @s mb_layer = $current_layer mb_layer run tag @s add next_to_scan
execute if entity @e[type=armor_stand,tag=edta_movable_build,tag=next_to_scan] run function movable_builds:scan/scan_manager