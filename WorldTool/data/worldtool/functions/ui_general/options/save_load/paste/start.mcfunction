# Called by worldtool:ui_general/options/menu
# Starts the paste process

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load

function worldtool:ui_general/options/save_load/remove_load_tags

tag @s add wt.load_area.paste
tag @s add wt.setup.load_area

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.paste_marker] if score @s wt.ID = #ID_temp worldtool run kill @s
summon minecraft:marker ~ ~ ~ {Tags:["worldtool","wt.paste_marker"]}
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.paste_marker,sort=nearest,limit=1] run scoreboard players operation @s wt.ID = #ID_temp worldtool

function worldtool:process_start/common/load

scoreboard players set #success worldtool 1
