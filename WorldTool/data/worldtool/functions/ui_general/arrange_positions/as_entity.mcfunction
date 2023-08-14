# Called by worldtool:use_tool/click/ray_hit/general/pos1 and worldtool:use_tool/click/ray_hit/general/pos2
# Arranges the positions as the entities themselves

execute if entity @s[tag=wt.pos1] run function worldtool:ui_general/arrange_positions/pos1
execute if entity @s[tag=wt.pos2] run function worldtool:ui_general/arrange_positions/pos2
