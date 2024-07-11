# Called by worldtool:ui_brush/select_brush/replace/check and worldtool:ui/return
# Selects the replace brush

function worldtool:ui_brush/check_tool

item modify entity @s weapon.mainhand worldtool:brush_tool/brushes/replace
function worldtool:ui/sound.change_item

function worldtool:ui_brush/menu
