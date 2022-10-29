# Called by worldtool:input_check/player
# Sets the plant rate to a manually entered value

execute store result score @s wt.greenery_rate run data get entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1,limit=1] Item.tag.WorldTool.Rate
kill @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1,limit=1]

execute if score @s wt.greenery_rate matches ..-1 run scoreboard players set @s wt.greenery_rate 0
execute if score @s wt.greenery_rate matches 101.. run scoreboard players set @s wt.greenery_rate 100

function worldtool:ui_general/greenery/menu
