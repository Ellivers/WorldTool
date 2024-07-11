# Called by worldtool:ui_general/clone/select_destination/selected, worldtool:ui_general/clone/menu and worldtool:ui_general/clone/start_move
# Starts the clone process

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.reciever_marker] if score @s wt.ID = #ID_temp worldtool run kill @s
summon minecraft:marker ~ ~ ~ {Tags:["worldtool","wt.reciever_marker"]}
scoreboard players operation @e[type=minecraft:marker,tag=worldtool,tag=wt.reciever_marker,sort=nearest,limit=1] wt.ID = #ID_temp worldtool

tag @s add wt.setup.clone
function worldtool:ui_general/clone/calculate_overlap
execute if score #success worldtool matches 1 run function worldtool:process_start/general/load

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load
