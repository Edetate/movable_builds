execute as @e[tag=edta_movable_build,tag=edta_mb_collision] if score @s mb_build_id = $current_id mb_build_id run kill @s
execute as @e[type=armor_stand,tag=edta_movable_build, tag=mb_shulker_collision] if score @s mb_build_id = $current_id mb_build_id run tag @s remove mb_shulker_collision
