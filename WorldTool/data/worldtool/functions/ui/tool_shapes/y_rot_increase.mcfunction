scoreboard players add @s wt_rotY 5
execute if score @s wt_rotY matches 360.. run scoreboard players set @s wt_rotY 0

function worldtool:ui/tool_shapes/select