scoreboard players set $shulker_collison_mode edta_mb_enum 3
tellraw @s [{"text":"\n\n\n\n\n\n> Shulker collision is now off for all movable builds \n\n\n\n\n\n\n\n\n"}]

schedule function movable_builds:collision/collison_fix_runner 1 replace

function movable_builds:options/options
