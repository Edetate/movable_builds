particle minecraft:cloud
execute unless block ~ ~ ~ minecraft:air align xyz run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1,Invulnerable:1b,Tags:[edta_movable_build, edta_mb_marker],Invisible:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.01f,0.01f,0.01f]},DisabledSlots:2039583}
execute if block ~ ~ ~ minecraft:air positioned ^ ^ ^0.5 run function movable_builds:extras/mark
