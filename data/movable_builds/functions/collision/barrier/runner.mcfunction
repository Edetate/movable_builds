execute as @e[type=minecraft:area_effect_cloud,tag=edta_movable_build,tag=barrier_collision] at @s run function movable_builds:collision/barrier/clear

execute if score $barrier_collison_mode edta_mb_enum matches 2 as @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part] at @s positioned ~ ~1 ~ if block ~ ~ ~ air run function movable_builds:collision/barrier/add_collission

execute if score $barrier_collison_mode edta_mb_enum matches 3 as @a at @s as @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part, distance=0..10] at @s positioned ~ ~1 ~ if block ~ ~ ~ air run function movable_builds:collision/barrier/add_collission

execute if score $barrier_collison_mode edta_mb_enum matches 4 as @a at @s as @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part, distance=0..50] at @s positioned ~ ~1 ~ if block ~ ~ ~ air run function movable_builds:collision/barrier/add_collission

execute if score $barrier_collison_mode edta_mb_enum matches 2.. run schedule function movable_builds:collision/barrier/runner 2