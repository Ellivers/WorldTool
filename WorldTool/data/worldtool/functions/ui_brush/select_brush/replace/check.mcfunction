# Called by worldtool:ui_brush/select_brush/menu
# Checks if a block prompt needs to be shown

function worldtool:ui_brush/check_tool

execute unless entity @s[predicate=!worldtool:brush_tool/settings/replace/exclude,predicate=!worldtool:brush_tool/settings/replace/normal] run function worldtool:ui_brush/select_brush/replace/set
execute unless predicate worldtool:brush_tool/settings/replace/exclude unless predicate worldtool:brush_tool/settings/replace/normal run function worldtool:ui_brush/select_brush/replace/first_time
