# Called by worldtool:ui_brush/select_brush/menu
# Selects the replace brush

function worldtool:ui_brush/check_tool

item modify entity @s weapon.mainhand worldtool:brush_tool/brushes/replace
function worldtool:ui/sound.change_item

item modify entity @s weapon.mainhand worldtool:brush_tool/settings/before_block/off

execute unless entity @s[predicate=!worldtool:brush_tool/settings/replace/exclude,predicate=!worldtool:brush_tool/settings/replace/normal] run function worldtool:ui_brush/menu
execute unless predicate worldtool:brush_tool/settings/replace/exclude unless predicate worldtool:brush_tool/settings/replace/normal run function worldtool:ui_brush/select_brush/replace/first_time
