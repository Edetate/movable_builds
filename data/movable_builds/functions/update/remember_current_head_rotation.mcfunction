scoreboard players operation $head_rotation mb_ver_rot = $current_rotation mb_ver_rot
#execute if score $head_rotation mb_ver_rot matches 90000000.. run scoreboard players remove $head_rotation mb_ver_rot 180000000
#execute if score $head_rotation mb_ver_rot matches ..-90000000 run scoreboard players add $head_rotation mb_ver_rot 180000000
