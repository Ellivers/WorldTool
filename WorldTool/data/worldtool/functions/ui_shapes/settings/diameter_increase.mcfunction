# Called by worldtool:ui_shapes/main
# Increases the diameter by 2 (it's always odd)

scoreboard players add @s wt.diameter 2
execute if score @s wt.diameter matches 1000.. run scoreboard players set @s wt.diameter 3

function worldtool:ui_shapes/main
