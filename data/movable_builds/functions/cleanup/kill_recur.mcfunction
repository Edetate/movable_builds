execute as @a run function movable_builds:cleanup/kill_tools
execute as @e[type=shulker,tag=edta_movable_build,tag=!edta_mb_to_kill] if score @s mb_build_id = $current_id mb_build_id run kill @s
execute as @e[type=armor_stand,tag=edta_movable_build,tag=!edta_mb_to_kill] if score @s mb_build_id = $current_id mb_build_id run function movable_builds:cleanup/tag_and_check