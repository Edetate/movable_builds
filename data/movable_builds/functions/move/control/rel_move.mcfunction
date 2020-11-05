execute if score $current_move_type mb_move_type matches 1 run function movable_builds:move/forward
execute if score $current_move_type mb_move_type matches 2 run function movable_builds:move/backward
execute if score $current_move_type mb_move_type matches 3 run function movable_builds:move/right
execute if score $current_move_type mb_move_type matches 4 run function movable_builds:move/left
execute if score $current_move_type mb_move_type matches 5 run function movable_builds:move/up
execute if score $current_move_type mb_move_type matches 6 run function movable_builds:move/down
