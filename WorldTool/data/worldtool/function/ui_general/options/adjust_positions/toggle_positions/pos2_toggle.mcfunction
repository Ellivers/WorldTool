# Called by worldtool:ui_general/options/adjust_positions/menu
# Toggles selecting and unselecting position 2

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run function worldtool:ui_general/options/adjust_positions/toggle_positions/entity_toggle

function worldtool:ui_general/options/adjust_positions/menu
