execute if score $current_move_type mb_move_type matches 1 run function movable_builds:move/rotate_clockwise
execute if score $current_move_type mb_move_type matches 2 run function movable_builds:move/rotate_counter_clockwise
execute if score $current_move_type mb_move_type matches 3 run function movable_builds:move/rotate_up
execute if score $current_move_type mb_move_type matches 4 run function movable_builds:move/rotate_down
execute if score $current_move_type mb_move_type matches 5 run function movable_builds:move/rotate_tilted_right
execute if score $current_move_type mb_move_type matches 6 run function movable_builds:move/rotate_tilted_left
