# Called by worldtool:ui_shapes/menu
# Removes all shape menu tags

tag @s remove wt.shapes.select_block

tag @s remove wt.shape.cone
tag @s remove wt.shape.cylinder
tag @s remove wt.shape.sphere
tag @s remove wt.shape.2d_fill

tag @s remove wt.setting.diameter
tag @s remove wt.setting.precision
tag @s remove wt.setting.axis
tag @s remove wt.setting.orientation
tag @s remove wt.setting.orientation.up
tag @s remove wt.setting.orientation.down
tag @s remove wt.setting.orientation.north
tag @s remove wt.setting.orientation.south
tag @s remove wt.setting.orientation.west
tag @s remove wt.setting.orientation.east
tag @s remove wt.setting.orientation.x
tag @s remove wt.setting.orientation.y
tag @s remove wt.setting.orientation.z
tag @s remove wt.setting.orientation.auto
tag @s remove wt.setting.degrees
tag @s remove wt.setting.secondary_degrees
tag @s remove wt.setting.length
tag @s remove wt.setting.y_rotation
tag @s remove wt.setting.x_rotation
tag @s remove wt.setting.z_rotation
tag @s remove wt.setting.hollow
tag @s remove wt.setting.keep
tag @s remove wt.setting.continuous

function #worldtool:hooks/ui_shapes/remove_ui_tags
