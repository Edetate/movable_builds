particle minecraft:cloud
execute if entity @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part,distance=..1,limit=1] run function movable_builds:info/get_info
execute unless entity @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part,distance=..1,limit=1] positioned ^ ^ ^0.5 run function movable_builds:tools/info
