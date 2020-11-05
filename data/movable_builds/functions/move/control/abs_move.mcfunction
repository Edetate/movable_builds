execute if score $current_move_type mb_move_type matches 1 run function movable_builds:move/shift_pos_x
execute if score $current_move_type mb_move_type matches 2 run function movable_builds:move/shift_neg_x
execute if score $current_move_type mb_move_type matches 3 run function movable_builds:move/shift_pos_z
execute if score $current_move_type mb_move_type matches 4 run function movable_builds:move/shift_neg_z
execute if score $current_move_type mb_move_type matches 5 run function movable_builds:move/shift_pos_y
execute if score $current_move_type mb_move_type matches 6 run function movable_builds:move/shift_neg_y
