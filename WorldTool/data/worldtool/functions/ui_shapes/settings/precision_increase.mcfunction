# Called by worldtool:ui_shapes/main
# Increases the precision by 10

scoreboard players add @s wt.precision 10
execute if score @s wt.precision matches 301.. run scoreboard players set @s wt.precision 10

function worldtool:ui_shapes/main
