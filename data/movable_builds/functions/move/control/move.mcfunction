execute as @e[type=armor_stand,tag=edta_movable_build,tag=center] if score @s mb_build_id = $cur_build_id mb_build_id at @s run function movable_builds:move/control/do_move
