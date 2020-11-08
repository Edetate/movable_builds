#init if new demo
execute unless entity @s[tag=demo] if entity @s[type=armor_stand,tag=edta_movable_build,tag=center] run scoreboard players set @s mb_timer 100
execute unless entity @s[tag=demo] if entity @s[type=armor_stand,tag=edta_movable_build,tag=center] run tag @s add demo

# actually do the demo

execute store result score $current_rotation mb_ver_rot run data get entity @e[type=armor_stand,tag=edta_movable_build,tag=demo,limit=1] Rotation[1] 1000000

execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=76..100}] at @s run tp @s ~0.3 ~0.3 ~
execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=51..75}] at @s run tp @s ~ ~ ~0.3 ~10 ~
execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=26..50}] at @s run tp @s ~-0.3 ~-0.3 ~ ~-10 ~
execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=1..25}] at @s run tp @s ~ ~ ~-0.3 ~ ~
execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=51..62}] run scoreboard players add $current_rotation mb_ver_rot 10000000
execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=63..75}] run scoreboard players remove $current_rotation mb_ver_rot 10000000
execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=13..25}] run scoreboard players add $current_rotation mb_ver_rot 10000000
execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=1..12}] run scoreboard players remove $current_rotation mb_ver_rot 10000000

scoreboard players remove @e[type=armor_stand,tag=edta_movable_build,tag=demo] mb_timer 1

execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=63..100}] at @s run function movable_builds:update/update_position
execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=25..50}] at @s run function movable_builds:update/update_position
execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=51..75}] at @s run function movable_builds:update/update_position_tilt
execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=0..24}] at @s run function movable_builds:update/update_position_untilt

execute as @e[type=armor_stand,tag=edta_movable_build,tag=demo,scores={mb_timer=0}] run tag @s remove demo

execute if entity @e[type=armor_stand,tag=edta_movable_build,tag=demo] run schedule function movable_builds:move/demo 1
