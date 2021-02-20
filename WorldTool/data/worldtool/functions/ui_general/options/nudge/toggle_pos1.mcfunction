execute if entity @s[tag=!wt_dont_move_pos1] run tag @s add toggling_move_pos1
execute if entity @s[tag=!wt_dont_move_pos1] run tag @s add wt_dont_move_pos1
execute if entity @s[tag=wt_dont_move_pos1,tag=!toggling_move_pos1] run tag @s remove wt_dont_move_pos1
tag @s remove toggling_move_pos1
function worldtool:ui_general/options/nudge/select