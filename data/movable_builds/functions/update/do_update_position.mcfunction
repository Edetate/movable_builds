function movable_builds:update/remember_current_head_rotation

execute unless score $100%_BLOCK_SIZE mb_boolean matches 1 as @s[tag=!edta_mb_tilt] run function movable_builds:update/update_next
execute unless score $100%_BLOCK_SIZE mb_boolean matches 1 as @s[tag=edta_mb_tilt] run function movable_builds:update/update_next_tilt

execute if score $100%_BLOCK_SIZE mb_boolean matches 1 as @s[tag=!edta_mb_tilt] run function movable_builds:update/full_size/update_next
execute if score $100%_BLOCK_SIZE mb_boolean matches 1 as @s[tag=edta_mb_tilt] run function movable_builds:update/full_size/update_next_tilt