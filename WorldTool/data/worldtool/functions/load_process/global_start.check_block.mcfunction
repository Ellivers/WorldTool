# Place the selected block(s) and remove the block marker

execute if entity @s[tag=!secondary] run clone ~1 ~ ~ ~1 ~ ~ 0 1 13
execute if entity @s[tag=!primary] run clone ~-1 ~ ~ ~-1 ~ ~ 2 1 13

function worldtool:ui_general/kill_wt_check