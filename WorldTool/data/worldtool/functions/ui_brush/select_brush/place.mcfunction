# Called by worldtool:ui_brush/select_brush/menu
# Selects the place brush

function worldtool:ui_brush/check_tool

item modify entity @s weapon.mainhand worldtool:brush_tool/brushes/place
function worldtool:ui/sound.change_item

execute unless data entity @s SelectedItem.tag.WorldTool.BrushSettings.OverwriteBlocks run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/overwrite_blocks/on

function worldtool:ui_brush/menu
