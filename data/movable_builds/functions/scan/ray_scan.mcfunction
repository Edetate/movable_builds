particle minecraft:cloud
execute unless block ~ ~ ~ minecraft:air align xyz positioned ~0.5 ~ ~0.5 run function movable_builds:scan/init_scan
execute if block ~ ~ ~ minecraft:air positioned ^ ^ ^1 run function movable_builds:scan/ray_scan
