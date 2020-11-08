scoreboard players operation $current_rotation mb_ver_rot += $rotation_increment mb_ver_rot

execute if score $current_rotation mb_ver_rot matches 360000000.. run scoreboard players remove $current_rotation mb_ver_rot 360000000
execute if score $current_rotation mb_ver_rot matches ..-360000000 run scoreboard players add $current_rotation mb_ver_rot 360000000