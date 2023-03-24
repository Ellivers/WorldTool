# Called by worldtool:ui_brush/select_brush/menu
# Selects the structure brush

function worldtool:ui_brush/check_tool

item modify entity @s weapon.mainhand worldtool:brush_tool/brushes/structure
function worldtool:ui/sound.change_item

execute unless data entity @s SelectedItem.tag.WorldTool.BrushSettings.StructureRotation run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_rotation/none
execute unless data entity @s SelectedItem.tag.WorldTool.BrushSettings.StructureMirror run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_mirror/none
execute unless data entity @s SelectedItem.tag.WorldTool.BrushSettings.StructureOffset run data modify storage worldtool:storage Temp.Offset set value 0
execute unless data entity @s SelectedItem.tag.WorldTool.BrushSettings.StructureOffset.posX run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_offset/set_x
execute unless data entity @s SelectedItem.tag.WorldTool.BrushSettings.StructureOffset.posY run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_offset/set_y
execute unless data entity @s SelectedItem.tag.WorldTool.BrushSettings.StructureOffset.posZ run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/structure_offset/set_z

function worldtool:ui_brush/menu
