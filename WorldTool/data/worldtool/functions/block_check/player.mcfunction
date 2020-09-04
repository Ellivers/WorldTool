# Called by worldtool:player_tick
# Two brush things, separated from the others because these use falling blocks instead
execute if entity @s[tag=check_block_brush] if entity @e[type=minecraft:falling_block,tag=switch_block_brush,distance=...2] run function worldtool:ui/brush/set/set_block
execute if entity @s[tag=check_block_replacebrush] if entity @e[type=minecraft:falling_block,tag=switch_block_brush,distance=...2] run function worldtool:ui/brush/select_replace/selected
execute if entity @s[tag=check_brush_structure] if entity @e[type=minecraft:item,tag=wt_set_structure,distance=...2] run function worldtool:ui/brush/set/structure
execute if entity @s[tag=check_brush_structure_offset] if entity @e[type=minecraft:item,tag=wt_set_structure_offset,distance=...2] run function worldtool:ui/brush/select_brush/settings/structure_offset/entered