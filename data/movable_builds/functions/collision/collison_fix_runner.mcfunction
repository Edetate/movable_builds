execute if score $shulker_collison_mode edta_mb_enum matches 2 as @e[type=armor_stand,tag=edta_movable_build,tag=mb_hides_shulker,tag=!mb_shulker_collision] at @s run function movable_builds:collision/do_add_collision

execute if score $shulker_collison_mode edta_mb_enum matches 3 run function movable_builds:collision/remove_all_collision

schedule function movable_builds:collision/collison_fix_runner 600 replace