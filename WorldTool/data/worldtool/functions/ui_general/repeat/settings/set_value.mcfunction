# Called by worldtool:input_check/player
# Sets an option to a manually entered value

data modify storage worldtool:storage Temp.Values set from entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1,limit=1] Item.tag.WorldTool
kill @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1,limit=1]

execute if data storage worldtool:storage Temp.Values.AmountX store result score @s wt.amountX run data get storage worldtool:storage Temp.Values.AmountX
execute if data storage worldtool:storage Temp.Values.AmountY store result score @s wt.amountY run data get storage worldtool:storage Temp.Values.AmountY
execute if data storage worldtool:storage Temp.Values.AmountZ store result score @s wt.amountZ run data get storage worldtool:storage Temp.Values.AmountZ

execute if data storage worldtool:storage Temp.Values.Spacing store result score @s wt.size run data get storage worldtool:storage Temp.Values.Spacing

function worldtool:ui_general/repeat/menu
