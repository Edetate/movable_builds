execute if score $shulker_collison_mode edta_mb_enum matches 2 as @e[type=armor_stand,tag=edta_movable_build,tag=mb_hides_shulker,tag=!mb_shulker_collision] at @s run function movable_builds:collision/do_add_collision

execute if score $shulker_collison_mode edta_mb_enum matches 3 run function movable_builds:collision/remove_all_collision

execute unless score $barrier_collison_mode edta_mb_enum matches 2.. as @e[type=minecraft:area_effect_cloud,tag=edta_movable_build,tag=barrier_collision] at @s run function movable_builds:collision/barrier/clear

scoreboard players set $is_this_runner_needed mb_boolean 0
execute if score $shulker_collison_mode edta_mb_enum matches 2..3 run scoreboard players set $is_this_runner_needed mb_boolean 1
execute unless score $barrier_collison_mode edta_mb_enum matches 2.. run scoreboard players set $is_this_runner_needed mb_boolean 1

execute if score $is_this_runner_needed mb_boolean matches 1 run schedule function movable_builds:collision/collison_fix_runner 600 replace