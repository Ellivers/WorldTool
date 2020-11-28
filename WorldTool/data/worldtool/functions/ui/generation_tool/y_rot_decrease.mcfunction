scoreboard players remove @s wt_rotY 5
execute if score @s wt_rotY matches ..-5 run scoreboard players set @s wt_rotY 355

function worldtool:ui/generation_tool/select