# Called by worldtool:player_tick
# Separated from the others because these use entities instead of blocks
execute if entity @s[tag=check_block_brush] if entity @e[type=minecraft:falling_block,tag=worldtool,tag=switch_block_brush,distance=...2] run function worldtool:ui_brush/set/set_block
execute if entity @s[tag=check_block_replacebrush] if entity @e[type=minecraft:falling_block,tag=worldtool,tag=switch_block_brush,distance=...2] run function worldtool:ui_brush/select_replace/selected
execute if entity @s[tag=check_brush_structure] if entity @e[type=minecraft:item,tag=worldtool,tag=wt_set_structure,distance=...2] run function worldtool:ui_brush/set/structure
execute if entity @s[tag=check_brush_structure_offset] if entity @e[type=minecraft:item,tag=worldtool,tag=wt_set_structure_offset,distance=...2] run function worldtool:ui_brush/select_brush/settings/structure_offset/entered
execute if entity @s[tag=wt_check_block_shge] if entity @e[type=minecraft:falling_block,tag=worldtool,tag=switch_gen_block,distance=...2] run function worldtool:ui_shapes/select/block_selected
function #worldtool:input/entity
