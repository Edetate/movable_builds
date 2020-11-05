scoreboard players operation $current_id mb_build_id = @s mb_cur_build_id
function movable_builds:cleanup/kill_recur
kill @e[type=armor_stand,tag=edta_movable_build, tag=edta_mb_to_kill]