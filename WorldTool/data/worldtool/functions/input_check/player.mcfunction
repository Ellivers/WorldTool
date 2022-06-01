# Called by worldtool:player_tick
# Separated from the others because these use entities instead of blocks

execute if entity @s[tag=wt.select_block.brush] if entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.selected_block,distance=..1] run function worldtool:ui_brush/select_block/selected
execute if entity @s[tag=wt.menu.adjust_positions] if entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1] run function worldtool:ui_general/options/adjust_positions/set_positions

function #worldtool:addon/input/entity
