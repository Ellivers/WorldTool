# Called by worldtool:ui_shapes/main
# Decreases the precision by 10

scoreboard players remove @s wt.precision 10
execute if score @s wt.precision matches ..9 run scoreboard players set @s wt.precision 300

function worldtool:ui_shapes/main
