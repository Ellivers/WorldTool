# Called by worldtool:player_tick
# Separated from the others because these use entities instead of blocks

execute if entity @s[tag=wt.select_block.brush] if entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.selected_block,distance=..1] run function worldtool:ui_brush/select_block/selected

function #worldtool:addon/input/entity
