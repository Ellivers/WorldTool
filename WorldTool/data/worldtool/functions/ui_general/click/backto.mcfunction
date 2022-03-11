# Called by worldtool:ui/back_using_tags
# Clears the chat before showing the click menu

scoreboard players operation #ID_temp worldtool = @s wt.ID

function worldtool:ui/clear_chat
tag @s remove wt.in_menu
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:block_test/stop
function worldtool:ui_general/click/load
