# Called by worldtool:ui_brush/select_brush/menu
# Selects the place brush

function worldtool:ui_brush/check_tool

item modify entity @s weapon.mainhand worldtool:brush_tool/brushes/place
function worldtool:ui/sound.change_item
function worldtool:ui_brush/set_tooltip

function worldtool:technical/common/get_item_data
execute unless data storage worldtool:storage Temp.ItemData.WorldTool.BrushSettings.OverwriteBlocks run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/overwrite_blocks/on

function worldtool:ui_brush/menu
