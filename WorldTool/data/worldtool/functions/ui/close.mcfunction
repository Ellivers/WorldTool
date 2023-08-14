# Called by various functions
# Closes any menu

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:input_check/stop
execute if entity @s[tag=wt.helper_particles.in_menu] run function worldtool:ui_general/arrange_positions/remove_particles
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool run kill @s
execute as @e[type=minecraft:armor_stand,tag=worldtool,tag=wt.rotation_preview] if score @s wt.ID = #ID_temp worldtool run kill @s
function worldtool:ui_general/clone/settings/reset_rotation
function worldtool:ui_general/remove_submenu_tags/load

tag @s remove wt.in_menu
function worldtool:ui/remove_return_tags
function worldtool:ui/remove_menu_tags
function worldtool:ui/clear_chat
tellraw @s[tag=!wt.no_message] {"nbt":"Translation.\"info.menu_closed\"","storage": "worldtool:storage"}
function worldtool:ui/anti_feedback_chat_message/load

function #worldtool:hooks/ui/close

tag @s remove wt.no_message
