# Called by worldtool:player_tick
# Separated from the others because these use entities instead of blocks

execute if entity @s[tag=wt.menu.adjust_positions] if entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1] run function worldtool:ui_general/options/adjust_positions/set_positions
execute if entity @s[tag=wt.menu.shell.side_settings] if entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1] run function worldtool:ui_general/shell/side_settings/size_set
execute if entity @s[tag=wt.menu.outline] if entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1] run function worldtool:ui_general/outline/size/set
execute if entity @s[tag=wt.menu.greenery] if entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1] run function worldtool:ui_general/greenery/settings/rate_set
execute if entity @s[tag=wt.menu.repeat] if entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1] run function worldtool:ui_general/repeat/settings/set_value
execute if entity @s[tag=wt.menu.smooth] if entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1] run function worldtool:ui_general/smooth/settings/edge_detection_limit_set
execute if entity @s[tag=wt.select_block.other] if entity @e[type=minecraft:falling_block,tag=worldtool,tag=wt.selected_block,distance=..1] run function worldtool:ui/select_block/selected/from_chat
execute if entity @s[tag=wt.brush.select_structure] if entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1] run function worldtool:ui_brush/select_structure/selected
execute if entity @s[tag=wt.brush.select_structure_offset] if entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1] run function worldtool:ui_brush/structure_offset/set
execute if entity @s[tag=wt.menu.shapes.adjust_position] if entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1] run function worldtool:ui_shapes/adjust_position/set_position
execute if entity @s[tag=wt.menu.shapes] if entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1] run function worldtool:ui_shapes/settings/set_value

function #worldtool:addon/input/entity
