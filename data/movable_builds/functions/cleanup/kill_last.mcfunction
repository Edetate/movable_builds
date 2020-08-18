execute as @e[type=armor_stand,tag=edta_movable_build] if score @s mb_build_id = $id_to_kill mb_build_id run kill @s
scoreboard players remove $id_to_kill mb_build_id 1