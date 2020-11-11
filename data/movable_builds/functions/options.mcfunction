
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   >> MOVABLE BUILD OPTIONS <<","color":"dark_green"}]
tellraw @s [{"text":" * [Set max blocks scanned]","color":"dark_grey","bold":true,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit 200"}}]

execute if score $100%_BLOCK_SIZE mb_boolean matches 2 run tellraw @s [{"text":" * Movable builds are 60% of block size. Click to make 100%.","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function movable_builds:options/turn_full_size_on"}}]
execute unless score $100%_BLOCK_SIZE mb_boolean matches 2 run tellraw @s [{"text":" * Movable builds are 100% of block size. Click to make 60%.","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function movable_builds:options/turn_full_size_off"}}]

function movable_builds:extras/no_command_fb