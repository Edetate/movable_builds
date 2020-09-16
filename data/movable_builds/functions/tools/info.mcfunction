particle minecraft:cloud
execute positioned ^ ^-1 ^ if entity @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part,distance=..1,limit=1] run function movable_builds:info/get_info
execute positioned ^ ^-1 ^ unless entity @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part,distance=..1,limit=1] positioned ^ ^1 ^0.5 run function movable_builds:tools/info
