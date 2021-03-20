execute if entity @s[tag=!wt_dont_move_pos2] run tag @s add toggling_move_pos2
execute if entity @s[tag=!wt_dont_move_pos2] run tag @s add wt_dont_move_pos2
execute if entity @s[tag=wt_dont_move_pos2,tag=!toggling_move_pos2] run tag @s remove wt_dont_move_pos2
tag @s remove toggling_move_pos2
function worldtool:ui_general/menus/options/nudge/select