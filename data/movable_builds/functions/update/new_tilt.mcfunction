tp @s ~ ~ ~ ~-90 ~
tag @s add edta_mb_tilt

scoreboard players operation $mb_root_id edta_mb_root_id = @s edta_mb_root_id
execute as @e[type=armor_stand,tag=edta_movable_build,tag=center, tag=edta_mb_tilt] if score @s mb_build_id = $mb_root_id edta_mb_root_id at @s rotated as @s run tp @s ~ ~ ~ ~90 ~
