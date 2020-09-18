execute as @a[nbt=!{SelectedItem:{tag:{mb-use-type:9}}}] run tag @s remove edta_mb_separat
kill @e[type=armor_stand,tag=edta_movable_build, tag=edta_mb_separator,tag=edta_mb_tmp]
execute as @a[tag=edta_mb_separat] at @s anchored eyes run function movable_builds:tools/separator/separator_ray
execute if entity @a[tag=edta_mb_separat] run schedule function movable_builds:tools/separator/separator_running 1