# Called by worldtool:ui_shapes/menu
# Commands to run as the position

data modify entity @s data.WorldTool.ShapeSettings set from storage worldtool:storage Temp.ShapeTool.ShapeSettings

tag @s remove wt.particles
tag @s remove wt.shape.cylinder.up
tag @s remove wt.shape.cylinder.down
tag @s remove wt.shape.cylinder.horizontal
tag @s remove wt.shape.cone.up
tag @s remove wt.shape.cone.down
tag @s remove wt.shape.cone.horizontal
tag @s remove wt.shape.sphere

function #worldtool:addon/ui_shapes/remove_preview_tags

execute if data storage worldtool:storage Temp.ShapeTool{Shape:"cylinder",ShapeSettings:{Orientation:"up"}} run tag @s add wt.shape.cylinder.up
execute if data storage worldtool:storage Temp.ShapeTool{Shape:"cylinder",ShapeSettings:{Orientation:"down"}} run tag @s add wt.shape.cylinder.down
execute if data storage worldtool:storage Temp.ShapeTool{Shape:"cylinder"} unless data storage worldtool:storage Temp.ShapeTool.ShapeSettings{Orientation:"up"} unless data storage worldtool:storage Temp.ShapeTool.ShapeSettings{Orientation:"down"} run tag @s add wt.shape.cylinder.horizontal

execute if data storage worldtool:storage Temp.ShapeTool{Shape:"cone",ShapeSettings:{Orientation:"up"}} run tag @s add wt.shape.cone.up
execute if data storage worldtool:storage Temp.ShapeTool{Shape:"cone",ShapeSettings:{Orientation:"down"}} run tag @s add wt.shape.cone.down
execute if data storage worldtool:storage Temp.ShapeTool{Shape:"cone"} unless data storage worldtool:storage Temp.ShapeTool.ShapeSettings{Orientation:"up"} unless data storage worldtool:storage Temp.ShapeTool.ShapeSettings{Orientation:"down"} run tag @s add wt.shape.cone.horizontal

function #worldtool:addon/ui_shapes/add_preview_tags

tp @s ~ ~ ~ 0 0

execute if score #yRotEnabled worldtool matches 1 store result entity @s Rotation[0] float 1 run data get storage worldtool:storage Temp.ShapeTool.ShapeSettings.YRotation
execute if score #xRotEnabled worldtool matches 1 store result entity @s Rotation[1] float 1 run data get storage worldtool:storage Temp.ShapeTool.ShapeSettings.XRotation

execute if data storage worldtool:storage Temp.ShapeTool.ShapeSettings{Orientation:"north"} run tp @s ~ ~ ~ ~90 ~
execute if data storage worldtool:storage Temp.ShapeTool.ShapeSettings{Orientation:"south"} run tp @s ~ ~ ~ ~-90 ~
execute if data storage worldtool:storage Temp.ShapeTool.ShapeSettings{Orientation:"east"} run tp @s ~ ~ ~ ~180 ~

execute if data storage worldtool:storage Temp.ShapeTool run tag @s add wt.particles
scoreboard players add #positions_temp worldtool 1