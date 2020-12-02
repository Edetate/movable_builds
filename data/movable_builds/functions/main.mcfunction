execute as @a[scores={mb_use_item=1..}] at @s run function movable_builds:tools/use_item

execute as @a[scores={mb_drop_coas=1..}] at @s run function movable_builds:tools/coas_dropped

execute as @e[type=minecraft:area_effect_cloud,tag=edta_movable_build,tag=barrier_collision] at @s if block ~ ~ ~ barrier run setblock ~ ~ ~ air
#execute as @a at @s as @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part, distance=0..10] at @s positioned ~ ~1 ~ if block ~ ~ ~ air run function movable_builds:push_away

scoreboard players set @a mb_drop_coas 0
scoreboard players set @a edta_mb_sneak 0
