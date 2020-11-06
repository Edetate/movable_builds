tp @s ~ ~ ~ ~90 ~
tag @s remove edta_mb_tilt

scoreboard players operation $mb_cur_id mb_build_id = @s mb_build_id
execute as @e[type=armor_stand,tag=edta_movable_build,tag=center, tag=edta_mb_tilt] if score @s edta_mb_root_id = $mb_cur_id mb_build_id unless score @s mb_build_id = $mb_cur_id mb_build_id at @s rotated as @s run scoreboard players remove @s mb_hor_rot 900000