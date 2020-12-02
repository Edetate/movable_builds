scoreboard players set $100%_BLOCK_SIZE mb_boolean 1
execute as @e[type=armor_stand,tag=edta_movable_build,tag=center] at @s run function movable_builds:update/update_position
tellraw @s [{"text":"\n\n\n\n\n\n    !!!   Warning: Setting depends on resource pack   !!! \n\n\n\n\n\n\n\n\n","color": "yellow"}]

function movable_builds:options/options
