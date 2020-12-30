# Called by worldtool:coas/check_entity
# Different actions for dropping a tool
execute unless data entity @s {Item:{tag:{Type:6b}}} unless data entity @s {Item:{tag:{Type:7b}}} run function worldtool:coas/switch_coas
execute if data entity @s {Item:{tag:{Type:6b}}} run function worldtool:ui/tool_brush/dropped
execute if data entity @s {Item:{tag:{Type:7b}}} run function worldtool:ui/tool_shapes/dropped
