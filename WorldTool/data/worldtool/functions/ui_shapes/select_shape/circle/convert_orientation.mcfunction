# Called by worldtool:ui_shapes/select_shape/circle/select and worldtool:ui_shapes/main
# Converts the orientation from six-directional to three-directional

data remove storage worldtool:storage Temp

execute if predicate worldtool:shape_tool/settings/orientations/down run data modify storage worldtool:storage Temp.Item.tag.WorldTool.ShapeSettings.Orientation set value "up"
execute if predicate worldtool:shape_tool/settings/orientations/west run data modify storage worldtool:storage Temp.Item.tag.WorldTool.ShapeSettings.Orientation set value "east"
execute if predicate worldtool:shape_tool/settings/orientations/south run data modify storage worldtool:storage Temp.Item.tag.WorldTool.ShapeSettings.Orientation set value "north"

function #worldtool:addon/ui_shapes/convert_orientation

execute if data storage worldtool:storage Temp.Item run item modify entity @s weapon.mainhand worldtool:copy_nbt
