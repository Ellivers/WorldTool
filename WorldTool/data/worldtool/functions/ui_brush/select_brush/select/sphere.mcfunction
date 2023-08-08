# Called by worldtool:ui_brush/select_brush/menu
# Selects the sphere brush

function worldtool:ui_brush/check_tool

item modify entity @s weapon.mainhand worldtool:brush_tool/brushes/sphere
function worldtool:ui/sound.change_item
function worldtool:ui_brush/set_tooltip

function worldtool:ui_brush/menu
