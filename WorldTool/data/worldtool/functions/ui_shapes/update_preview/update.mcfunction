# Called by worldtool:ui_shapes/update_preview/pos
# Updates the preview entity tags and stuff

data modify entity @s data.WorldTool.ShapeSettings set from storage worldtool:storage Temp.ShapeTool.ShapeSettings

tag @s remove wt.particles
tag @s remove wt.shape.cylinder.up
tag @s remove wt.shape.cylinder.down
tag @s remove wt.shape.cylinder.horizontal
tag @s remove wt.shape.cone.vertical
tag @s remove wt.shape.cone.up
tag @s remove wt.shape.cone.down
tag @s remove wt.shape.cone.east
tag @s remove wt.shape.cone.west
tag @s remove wt.shape.cone.south
tag @s remove wt.shape.cone.north
tag @s remove wt.shape.cone.horizontal
tag @s remove wt.shape.sphere
tag @s remove wt.shape.2d_fill

function #worldtool:hooks/ui_shapes/remove_preview_tags

execute if data storage worldtool:storage Temp.ShapeTool{Shape:"cylinder"} if data storage worldtool:storage Temp.ShapeTool.Temp{Orientation:"up"} run tag @s add wt.shape.cylinder.up
execute if data storage worldtool:storage Temp.ShapeTool{Shape:"cylinder"} if data storage worldtool:storage Temp.ShapeTool.Temp{Orientation:"down"} run tag @s add wt.shape.cylinder.down
execute if data storage worldtool:storage Temp.ShapeTool{Shape:"cylinder"} run tag @s[tag=!wt.shape.cylinder.up,tag=!wt.shape.cylinder.down] add wt.shape.cylinder.horizontal

execute if data storage worldtool:storage Temp.ShapeTool{Shape:"cone"} if data storage worldtool:storage Temp.ShapeTool.Temp{Orientation:"up"} run tag @s add wt.shape.cone.up
execute if data storage worldtool:storage Temp.ShapeTool{Shape:"cone"} if data storage worldtool:storage Temp.ShapeTool.Temp{Orientation:"down"} run tag @s add wt.shape.cone.down
execute if data storage worldtool:storage Temp.ShapeTool{Shape:"cone"} if data storage worldtool:storage Temp.ShapeTool.Temp{Orientation:"east"} run tag @s add wt.shape.cone.east
execute if data storage worldtool:storage Temp.ShapeTool{Shape:"cone"} if data storage worldtool:storage Temp.ShapeTool.Temp{Orientation:"west"} run tag @s add wt.shape.cone.west
execute if data storage worldtool:storage Temp.ShapeTool{Shape:"cone"} if data storage worldtool:storage Temp.ShapeTool.Temp{Orientation:"south"} run tag @s add wt.shape.cone.south
execute if data storage worldtool:storage Temp.ShapeTool{Shape:"cone"} if data storage worldtool:storage Temp.ShapeTool.Temp{Orientation:"north"} run tag @s add wt.shape.cone.north
execute unless entity @s[tag=!wt.shape.cone.up,tag=!wt.shape.cone.down] run tag @s add wt.shape.cone.vertical
execute if data storage worldtool:storage Temp.ShapeTool{Shape:"cone"} run tag @s[tag=!wt.shape.cone.up,tag=!wt.shape.cone.down] add wt.shape.cone.horizontal
execute if data storage worldtool:storage Temp.ShapeTool{Shape:"sphere"} run tag @s add wt.shape.sphere
execute if data storage worldtool:storage Temp.ShapeTool{Shape:"2d_fill"} run tag @s add wt.shape.2d_fill

function #worldtool:hooks/ui_shapes/add_preview_tags

tp @s ~ ~ ~ 0 0

execute if score #yRotEnabled worldtool matches 1 store result entity @s Rotation[0] float 1 run data get storage worldtool:storage Temp.ShapeTool.ShapeSettings.YRotation
execute unless score #xRotEnabled worldtool matches 1 run data remove entity @s data.WorldTool.XRotation
execute if score #xRotEnabled worldtool matches 1 run data modify entity @s data.WorldTool.XRotation set from storage worldtool:storage Temp.ShapeTool.ShapeSettings.XRotation

execute if data storage worldtool:storage Temp.ShapeTool.ShapeSettings{AcceptedOrientation:"standard"} if data storage worldtool:storage Temp.ShapeTool.Temp{Orientation:"north"} at @s run tp @s ~ ~ ~ ~-90 ~
execute if data storage worldtool:storage Temp.ShapeTool.ShapeSettings{AcceptedOrientation:"standard"} if data storage worldtool:storage Temp.ShapeTool.Temp{Orientation:"south"} at @s run tp @s ~ ~ ~ ~90 ~
execute if data storage worldtool:storage Temp.ShapeTool.ShapeSettings{AcceptedOrientation:"standard"} if data storage worldtool:storage Temp.ShapeTool.Temp{Orientation:"west"} at @s run tp @s ~ ~ ~ ~180 ~

execute if data storage worldtool:storage Temp.ShapeTool.ShapeSettings{AcceptedOrientation:"axis"} if data storage worldtool:storage Temp.ShapeTool.Temp{Orientation:"z"} at @s run tp @s ~ ~ ~ ~-90 ~
execute if data storage worldtool:storage Temp.ShapeTool.ShapeSettings{AcceptedOrientation:"axis"} if data storage worldtool:storage Temp.ShapeTool.Temp{Orientation:"x"} at @s run tp @s ~ ~ ~ ~180 ~

execute if data storage worldtool:storage Temp.ShapeTool run tag @s add wt.particles
