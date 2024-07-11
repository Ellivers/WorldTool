# Called by worldtool:particles/player
# Displays randomization source selection particles

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source_corner.1] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos1
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source_corner.2] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos2

function worldtool:technical/common/temp_entity

execute if score #pos1xt worldtool < #pos2xt worldtool run scoreboard players add #pos2xt worldtool 1
execute if score #pos1yt worldtool < #pos2yt worldtool run scoreboard players add #pos2yt worldtool 1
execute if score #pos1zt worldtool < #pos2zt worldtool run scoreboard players add #pos2zt worldtool 1

execute if score #pos1xt worldtool >= #pos2xt worldtool run scoreboard players remove #pos2xt worldtool 1
execute if score #pos1yt worldtool >= #pos2yt worldtool run scoreboard players remove #pos2yt worldtool 1
execute if score #pos1zt worldtool >= #pos2zt worldtool run scoreboard players remove #pos2zt worldtool 1

execute as d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/randomization_source_selection/display.entity.pos1
execute at d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/randomization_source_selection/pos1/load

execute if score #pos1xt worldtool < #pos2xt worldtool run scoreboard players remove #pos2xt worldtool 1
execute if score #pos1yt worldtool < #pos2yt worldtool run scoreboard players remove #pos2yt worldtool 1
execute if score #pos1zt worldtool < #pos2zt worldtool run scoreboard players remove #pos2zt worldtool 1

execute if score #pos1xt worldtool >= #pos2xt worldtool run scoreboard players add #pos2xt worldtool 1
execute if score #pos1yt worldtool >= #pos2yt worldtool run scoreboard players add #pos2yt worldtool 1
execute if score #pos1zt worldtool >= #pos2zt worldtool run scoreboard players add #pos2zt worldtool 1

scoreboard players operation #pos1xt worldtool >< #pos2xt worldtool
scoreboard players operation #pos1yt worldtool >< #pos2yt worldtool
scoreboard players operation #pos1zt worldtool >< #pos2zt worldtool

execute if score #pos1xt worldtool <= #pos2xt worldtool run scoreboard players add #pos2xt worldtool 1
execute if score #pos1yt worldtool <= #pos2yt worldtool run scoreboard players add #pos2yt worldtool 1
execute if score #pos1zt worldtool <= #pos2zt worldtool run scoreboard players add #pos2zt worldtool 1

execute if score #pos1xt worldtool > #pos2xt worldtool run scoreboard players remove #pos2xt worldtool 1
execute if score #pos1yt worldtool > #pos2yt worldtool run scoreboard players remove #pos2yt worldtool 1
execute if score #pos1zt worldtool > #pos2zt worldtool run scoreboard players remove #pos2zt worldtool 1

execute as d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/randomization_source_selection/display.entity.pos2
execute at d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/randomization_source_selection/pos2/load

kill d43b8e30-51cc-4da0-918a-60a557ae676f
