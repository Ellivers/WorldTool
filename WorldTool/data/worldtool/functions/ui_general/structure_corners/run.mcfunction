# Called by worldtool:ui_general/structure_corners/menu
# Places two corner structure blocks in the corners of the selection

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos1
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos2

execute if score #pos1xt worldtool <= #pos2xt worldtool run scoreboard players remove #pos1xt worldtool 1
execute if score #pos1yt worldtool <= #pos2yt worldtool run scoreboard players remove #pos1yt worldtool 1
execute if score #pos1zt worldtool <= #pos2zt worldtool run scoreboard players remove #pos1zt worldtool 1

execute if score #pos1xt worldtool > #pos2xt worldtool run scoreboard players add #pos1xt worldtool 1
execute if score #pos1yt worldtool > #pos2yt worldtool run scoreboard players add #pos1yt worldtool 1
execute if score #pos1zt worldtool > #pos2zt worldtool run scoreboard players add #pos1zt worldtool 1

execute if score #pos2xt worldtool < #pos1xt worldtool run scoreboard players remove #pos2xt worldtool 1
execute if score #pos2yt worldtool < #pos1yt worldtool run scoreboard players remove #pos2yt worldtool 1
execute if score #pos2zt worldtool < #pos1zt worldtool run scoreboard players remove #pos2zt worldtool 1

execute if score #pos2xt worldtool > #pos1xt worldtool run scoreboard players add #pos2xt worldtool 1
execute if score #pos2yt worldtool > #pos1yt worldtool run scoreboard players add #pos2yt worldtool 1
execute if score #pos2zt worldtool > #pos1zt worldtool run scoreboard players add #pos2zt worldtool 1

function #rx.playerdb:api/v2/get/self

kill d43b8e30-51cc-4da0-918a-60a557ae676f
function worldtool:technical/common/temp_entity

data modify storage worldtool:storage Temp.Pos set value [0d,0d,0d]
execute store result storage worldtool:storage Temp.Pos[0] double 1 run scoreboard players get #pos1xt worldtool
execute store result storage worldtool:storage Temp.Pos[1] double 1 run scoreboard players get #pos1yt worldtool
execute store result storage worldtool:storage Temp.Pos[2] double 1 run scoreboard players get #pos1zt worldtool
data modify entity d43b8e30-51cc-4da0-918a-60a557ae676f Pos set from storage worldtool:storage Temp.Pos

scoreboard players set #temp worldtool 0
scoreboard players set #temp2 worldtool 0

execute if entity @s[tag=!wt.keep] at d43b8e30-51cc-4da0-918a-60a557ae676f store success score #temp2 worldtool run setblock ~ ~ ~ minecraft:structure_block{mode:"CORNER"}
execute if entity @s[tag=wt.keep] at d43b8e30-51cc-4da0-918a-60a557ae676f store success score #temp2 worldtool run setblock ~ ~ ~ minecraft:structure_block{mode:"CORNER"} keep
execute if score $playerdbAvailable worldtool matches 1 at d43b8e30-51cc-4da0-918a-60a557ae676f run data modify block ~ ~ ~ name set from storage rx.playerdb:io player.data.WorldTool.StructureCornerName

scoreboard players operation #temp worldtool += #temp2 worldtool
scoreboard players set #temp2 worldtool 0

data modify storage worldtool:storage Temp.Pos set value [0d,0d,0d]
execute store result storage worldtool:storage Temp.Pos[0] double 1 run scoreboard players get #pos2xt worldtool
execute store result storage worldtool:storage Temp.Pos[1] double 1 run scoreboard players get #pos2yt worldtool
execute store result storage worldtool:storage Temp.Pos[2] double 1 run scoreboard players get #pos2zt worldtool
data modify entity d43b8e30-51cc-4da0-918a-60a557ae676f Pos set from storage worldtool:storage Temp.Pos

execute if entity @s[tag=!wt.keep] at d43b8e30-51cc-4da0-918a-60a557ae676f store success score #temp2 worldtool run setblock ~ ~ ~ minecraft:structure_block{mode:"CORNER"}
execute if entity @s[tag=wt.keep] at d43b8e30-51cc-4da0-918a-60a557ae676f store success score #temp2 worldtool run setblock ~ ~ ~ minecraft:structure_block{mode:"CORNER"} keep
execute if score $playerdbAvailable worldtool matches 1 at d43b8e30-51cc-4da0-918a-60a557ae676f run data modify block ~ ~ ~ name set from storage rx.playerdb:io player.data.WorldTool.StructureCornerName

kill d43b8e30-51cc-4da0-918a-60a557ae676f

scoreboard players operation #temp worldtool += #temp2 worldtool

execute if score #temp worldtool matches 0 run tellraw @s {"nbt":"Translation.\"info.structure_corners.none_placed\"","storage": "worldtool:storage","color": "red"}
execute if score #temp worldtool matches 1 run tellraw @s {"nbt":"Translation.\"info.structure_corners.some_placed\"","storage": "worldtool:storage","color": "gold"}
execute if score #temp worldtool matches 2 run tellraw @s {"nbt":"Translation.\"info.structure_corners.placed\"","storage": "worldtool:storage"}

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load
