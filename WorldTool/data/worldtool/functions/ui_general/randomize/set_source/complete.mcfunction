# Called by worldtool:ui/reopen_menu/after_process

tag @s remove wt.menu.randomize.set_source.wait

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source_corner,tag=wt.not_used_yet] if score @s wt.ID = #ID_temp worldtool run tag @s remove wt.not_used_yet

function worldtool:ui_general/randomize/menu
