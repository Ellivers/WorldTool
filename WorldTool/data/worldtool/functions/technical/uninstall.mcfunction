# Called by worldtool:ui_general/menus/options/settings
# Unistalls WorldTool

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load

execute store result score #temp worldtool if data storage rx.playerdb:main players[]
execute if score #temp worldtool matches 1.. store result score #temp worldtool if data storage rx.playerdb:main players[{data:{WorldTool:{}}}]
execute if score #temp worldtool matches 1.. run scoreboard players set #temp2 worldtool 0
execute if score #temp worldtool matches 1.. run function worldtool:technical/uninstall/remove_player_data

scoreboard objectives remove worldtool
scoreboard objectives remove wt.use_coas
scoreboard objectives remove wt.drop_coas
scoreboard objectives remove wt.ID
scoreboard objectives remove wt.chance
scoreboard objectives remove wt.pos1x
scoreboard objectives remove wt.pos1y
scoreboard objectives remove wt.pos1z
scoreboard objectives remove wt.pos2x
scoreboard objectives remove wt.pos2y
scoreboard objectives remove wt.pos2z
scoreboard objectives remove wt.version
scoreboard objectives remove wt.sneak
scoreboard objectives remove wt.greenery_rate
scoreboard objectives remove wt.size
scoreboard objectives remove wt.size2
scoreboard objectives remove wt.rotX
scoreboard objectives remove wt.rotY
scoreboard objectives remove wt.rotZ
scoreboard objectives remove wt.amountX
scoreboard objectives remove wt.amountY
scoreboard objectives remove wt.amountZ

execute in minecraft:overworld positioned 27450 0 19 run function worldtool:technical/common/forceload/remove
execute in minecraft:the_nether positioned 27450 0 19 run function worldtool:technical/common/forceload/remove
execute in minecraft:the_end positioned 27450 0 19 run function worldtool:technical/common/forceload/remove

team remove wt.pos
team remove wt.pos1
team remove wt.pos2

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.can_forceload,scores={worldtool=1..}] at @s run function worldtool:technical/common/forceload/remove
kill @e[tag=worldtool]

tellraw @s ["\n\n",{"nbt":"Translation.\"info.uninstall\"","storage": "worldtool:storage","color": "green"}]

execute as @a run function worldtool:technical/uninstall/remove_player_tags

data remove storage worldtool:storage Translation
data remove storage worldtool:storage Log
data remove storage worldtool:storage PluginList
data remove storage worldtool:storage AvailableBackupSlots
data remove storage worldtool:storage BlocksPerTick
data remove storage worldtool:storage Temp
data remove storage worldtool:storage Language
data remove storage worldtool:storage Processes

function #worldtool:hooks/uninstall
