scoreboard players operation @s edta_mb_ppl_id = @a[tag=edta_mb_builder,sort=nearest,limit=1] edta_mb_ppl_id

execute at @a[tag=edta_mb_builder,sort=nearest,limit=1] run function movable_builds:tools/move/summon_rotation_tool
execute at @a[tag=edta_mb_builder,sort=nearest,limit=1] if score @s mb_build_id = $root_id mb_build_id run function movable_builds:tools/move/summon_move_tools

scoreboard players add $current_id mb_build_id 1
