summon minecraft:armor_stand ~ ~.95 ~ {Marker:1b,NoGravity:1,Invulnerable:1b,Tags:[edta_movable_build,edta_mb_part, edta_mb_collision],Invisible:1b,DisabledSlots:2039583,Passengers:[{id:"minecraft:shulker",Tags:[edta_movable_build,edta_mb_collision],NoAI:1b,Silent:1b,PersistenceRequired:1,NoGravity:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1,Duration:2147483647,ShowParticles:0b}],Color:12b,DeathLootTable:"empty"}]}

execute as @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_collision,tag=!idgiven,limit=1] at @s run function movable_builds:collision/set_properties
execute as @e[type=shulker,tag=edta_movable_build,tag=edta_mb_collision,tag=!idgiven,limit=1] at @s run function movable_builds:collision/give_shulker_id
