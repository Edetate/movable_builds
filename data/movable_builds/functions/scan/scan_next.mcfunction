tag @s remove next_to_scan
scoreboard players operation $parent_id mb_part_id = @s mb_part_id
scoreboard players operation $current_id mb_build_id = @s mb_build_id

scoreboard players set $coming_from_side mb_build_side 1
execute unless score $blocks_scanned scan_limit = $MAX_NUMBER_OF_BLOCKS_SCANNED scan_limit positioned ~1 ~ ~ unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air unless entity @e[type=minecraft:area_effect_cloud,tag=edta_movable_build,tag=block_scanned,distance=..0.5] run function movable_builds:scan/create_part

scoreboard players set $coming_from_side mb_build_side 2
execute unless score $blocks_scanned scan_limit = $MAX_NUMBER_OF_BLOCKS_SCANNED scan_limit positioned ~-1 ~ ~ unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air unless entity @e[type=minecraft:area_effect_cloud,tag=edta_movable_build,tag=block_scanned,distance=..0.5] run function movable_builds:scan/create_part

scoreboard players set $coming_from_side mb_build_side 3
execute unless score $blocks_scanned scan_limit = $MAX_NUMBER_OF_BLOCKS_SCANNED scan_limit positioned ~ ~ ~1 unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air unless entity @e[type=minecraft:area_effect_cloud,tag=edta_movable_build,tag=block_scanned,distance=..0.5] run function movable_builds:scan/create_part

scoreboard players set $coming_from_side mb_build_side 4
execute unless score $blocks_scanned scan_limit = $MAX_NUMBER_OF_BLOCKS_SCANNED scan_limit positioned ~ ~ ~-1 unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air unless entity @e[type=minecraft:area_effect_cloud,tag=edta_movable_build,tag=block_scanned,distance=..0.5] run function movable_builds:scan/create_part

scoreboard players set $coming_from_side mb_build_side 5
execute unless score $blocks_scanned scan_limit = $MAX_NUMBER_OF_BLOCKS_SCANNED scan_limit positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air unless entity @e[type=minecraft:area_effect_cloud,tag=edta_movable_build,tag=block_scanned,distance=..0.5] run function movable_builds:scan/create_part

scoreboard players set $coming_from_side mb_build_side 6
execute unless score $blocks_scanned scan_limit = $MAX_NUMBER_OF_BLOCKS_SCANNED scan_limit positioned ~ ~-1 ~ unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air unless entity @e[type=minecraft:area_effect_cloud,tag=edta_movable_build,tag=block_scanned,distance=..0.5] run function movable_builds:scan/create_part