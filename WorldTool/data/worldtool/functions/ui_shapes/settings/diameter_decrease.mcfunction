# Called by worldtool:ui_shapes/main
# Decreases the diameter by 2 (it's always odd)

scoreboard players remove @s wt.diameter 2
execute if score @s wt.diameter matches ..2 run scoreboard players set @s wt.diameter 999

function worldtool:ui_shapes/main
