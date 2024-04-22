# Called by worldtool:ui_brush/select_brush/menu
# Selects the circle brush

function worldtool:ui_brush/check_tool

item modify entity @s weapon.mainhand worldtool:brush_tool/brushes/circle
function worldtool:ui/sound.change_item
function worldtool:ui_brush/set_tooltip

function worldtool:technical/common/get_item_data
execute unless data storage worldtool:storage Temp.ItemData.WorldTool.BrushSettings.Axis run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/axis/auto

function worldtool:ui_brush/menu
