#1=left(pos-x, 2=right(neg-x), 3=front(pos-z), 4=back(neg-z), 5=up, 6=down
execute if score @s mb_build_side matches 1 run tp ^.6 ^ ^
execute if score @s mb_build_side matches 2 run tp ^-.6 ^ ^
execute if score @s mb_build_side matches 3 run tp ^ ^ ^.6
execute if score @s mb_build_side matches 4 run tp ^ ^ ^-.6
execute if score @s mb_build_side matches 5 run tp ^ ^.6 ^
execute if score @s mb_build_side matches 6 run tp ^ ^-.6 ^
#execute if score @s mb_build_side matches 7 run tp ^ ^1.5 ^
function movable_builds:update/update_position
