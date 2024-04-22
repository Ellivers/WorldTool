# Called by worldtool:ui_brush/select_brush/menu
# Selects the structure brush

function worldtool:ui_brush/check_tool

item modify entity @s weapon.mainhand worldtool:brush_tool/brushes/structure
function worldtool:ui/sound.change_item
function worldtool:ui_brush/set_tooltip

function worldtool:technical/common/get_item_data
execute unless data storage worldtool:storage Temp.ItemData.WorldTool.BrushSettings.StructureRotation run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_rotation/none
execute unless data storage worldtool:storage Temp.ItemData.WorldTool.BrushSettings.StructureMirror run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_mirror/none
execute unless data storage worldtool:storage Temp.ItemData.WorldTool.BrushSettings.StructureOffset run data modify storage worldtool:storage Temp.Offset set value 0
execute unless data storage worldtool:storage Temp.ItemData.WorldTool.BrushSettings.StructureOffset.posX run function worldtool:modify_item/brush_tool/settings/structure_offset/set_x
execute unless data storage worldtool:storage Temp.ItemData.WorldTool.BrushSettings.StructureOffset.posY run function worldtool:modify_item/brush_tool/settings/structure_offset/set_y
execute unless data storage worldtool:storage Temp.ItemData.WorldTool.BrushSettings.StructureOffset.posZ run function worldtool:modify_item/brush_tool/settings/structure_offset/set_z

function worldtool:ui_brush/menu
