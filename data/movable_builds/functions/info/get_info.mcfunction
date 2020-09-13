scoreboard players operation $current_id mb_build_id = @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part,distance=..1,limit=1] mb_build_id
team join edta_mb_center @e[type=minecraft:armor_stand, tag=edta_movable_build, tag=center]
tellraw @s [{"text":"ID is ","color":"aqua"},{"score":{"name":"$current_id","objective":"mb_build_id"},"color":"aqua"},{"text":"   ","color":"aqua"},{"text":"[Kill]","color":"blue","underlined":true,"clickEvent":{"action":"run_command","value":"/function movable_builds:cleanup/kill_current"}}]

execute as @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part, tag=center] if score @s mb_build_id = $current_id mb_build_id run scoreboard players operation $current_ppl_id edta_mb_ppl_id = @s edta_mb_ppl_id
execute as @a if score @s edta_mb_ppl_id = $current_ppl_id edta_mb_ppl_id run tag @s add edta_mb_builder

execute if entity @a[tag=edta_mb_builder] run tellraw @s [{"text":"This build belongs to ","color":"aqua"},{"selector":"@a[tag=edta_mb_builder]"}]
execute unless entity @a[tag=edta_mb_builder] run tellraw @s [{"text":"This build belongs to the person with id ","color":"aqua"},{"score":{"name":"$current_ppl_id","objective":"edta_mb_ppl_id"},"color":"aqua"}, {"text":" who is currently offline.","color":"aqua"}]
tag @a[tag=edta_mb_builder] remove edta_mb_builder

execute as @e[type=armor_stand,tag=edta_movable_build,tag=edta_mb_part] if score @s mb_build_id = $current_id mb_build_id run effect give @s glowing 5