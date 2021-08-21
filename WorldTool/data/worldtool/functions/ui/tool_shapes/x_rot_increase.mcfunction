scoreboard players add @s wt_rotX 5
execute if score @s wt_rotX matches 360.. run scoreboard players set @s wt_rotX 0

function worldtool:ui/tool_shapes/select