# Ecxeptions for finishing processes
execute if entity @s[tag=random1] as @a[tag=wt_random_2] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:ui_general/menus/randomize/place_done
