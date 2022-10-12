# Called by worldtool:input_check/player
# Sets a number value option to the value entered by the player

data modify storage worldtool:storage Temp.ShapeSettings set from entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1,limit=1] Item.tag.WorldTool
kill @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,distance=..1,limit=1]

function worldtool:ui_shapes/check_tool

data modify storage worldtool:storage Temp.ShapeSettings.XRotation set from storage worldtool:storage Temp.ShapeSettings.ZRotation

execute if data storage worldtool:storage Temp.ShapeSettings.Diameter store result score #temp worldtool run data get storage worldtool:storage Temp.ShapeSettings.Diameter
execute if data storage worldtool:storage Temp.ShapeSettings.Diameter if score #temp worldtool matches ..2 run scoreboard players set #temp worldtool 3
execute if data storage worldtool:storage Temp.ShapeSettings.Diameter run scoreboard players operation #temp2 worldtool = #temp worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.Diameter run scoreboard players operation #temp2 worldtool %= #2 worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.Diameter if score #temp2 worldtool matches 0 run scoreboard players remove #temp worldtool 1
execute if data storage worldtool:storage Temp.ShapeSettings.Diameter store result storage worldtool:storage Temp.Diameter int 1 run scoreboard players get #temp worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.Diameter run item modify entity @s weapon.mainhand worldtool:shape_tool/settings/set_diameter

execute if data storage worldtool:storage Temp.ShapeSettings.Length store result score #temp worldtool run data get storage worldtool:storage Temp.ShapeSettings.Length
execute if data storage worldtool:storage Temp.ShapeSettings.Length if score #temp worldtool matches ..0 run scoreboard players set #temp worldtool 3
execute if data storage worldtool:storage Temp.ShapeSettings.Length store result storage worldtool:storage Temp.Length int 1 run scoreboard players get #temp worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.Length run item modify entity @s weapon.mainhand worldtool:shape_tool/settings/set_length

execute if data storage worldtool:storage Temp.ShapeSettings.Degrees store result score #temp worldtool run data get storage worldtool:storage Temp.ShapeSettings.Degrees
execute if data storage worldtool:storage Temp.ShapeSettings.Degrees run scoreboard players operation #temp worldtool %= #360 worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.Degrees if score #temp worldtool matches 1..4 run scoreboard players set #temp worldtool 5
execute if data storage worldtool:storage Temp.ShapeSettings.Degrees if score #temp worldtool matches 0 run scoreboard players set #temp worldtool 360
execute if data storage worldtool:storage Temp.ShapeSettings.Degrees run scoreboard players operation #temp worldtool /= #5 worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.Degrees run scoreboard players operation #temp worldtool *= #5 worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.Degrees store result storage worldtool:storage Temp.Degrees int 1 run scoreboard players get #temp worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.Degrees run item modify entity @s weapon.mainhand worldtool:shape_tool/settings/set_degrees

execute if data storage worldtool:storage Temp.ShapeSettings.SecondaryDegrees store result score #temp worldtool run data get storage worldtool:storage Temp.ShapeSettings.SecondaryDegrees
execute if data storage worldtool:storage Temp.ShapeSettings.SecondaryDegrees run scoreboard players operation #temp worldtool %= #360 worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.SecondaryDegrees if score #temp worldtool matches 1..4 run scoreboard players set #temp worldtool 5
execute if data storage worldtool:storage Temp.ShapeSettings.SecondaryDegrees if score #temp worldtool matches 0 run scoreboard players set #temp worldtool 360
execute if data storage worldtool:storage Temp.ShapeSettings.SecondaryDegrees run scoreboard players operation #temp worldtool /= #5 worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.SecondaryDegrees run scoreboard players operation #temp worldtool *= #5 worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.SecondaryDegrees store result storage worldtool:storage Temp.SecondaryDegrees int 1 run scoreboard players get #temp worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.SecondaryDegrees run item modify entity @s weapon.mainhand worldtool:shape_tool/settings/set_secondary_degrees

execute if data storage worldtool:storage Temp.ShapeSettings.XRotation store result score #temp worldtool run data get storage worldtool:storage Temp.ShapeSettings.XRotation
execute if data storage worldtool:storage Temp.ShapeSettings.XRotation run scoreboard players operation #temp worldtool %= #360 worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.XRotation if score #temp worldtool matches 356.. run scoreboard players set #temp worldtool 355
execute if data storage worldtool:storage Temp.ShapeSettings.XRotation run scoreboard players operation #temp worldtool /= #5 worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.XRotation run scoreboard players operation #temp worldtool *= #5 worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.XRotation store result storage worldtool:storage Temp.XRotation int 1 run scoreboard players get #temp worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.XRotation run item modify entity @s weapon.mainhand worldtool:shape_tool/settings/set_x_rotation

execute if data storage worldtool:storage Temp.ShapeSettings.YRotation store result score #temp worldtool run data get storage worldtool:storage Temp.ShapeSettings.YRotation
execute if data storage worldtool:storage Temp.ShapeSettings.YRotation run scoreboard players operation #temp worldtool %= #360 worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.YRotation if score #temp worldtool matches 356.. run scoreboard players set #temp worldtool 355
execute if data storage worldtool:storage Temp.ShapeSettings.YRotation run scoreboard players operation #temp worldtool /= #5 worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.YRotation run scoreboard players operation #temp worldtool *= #5 worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.YRotation store result storage worldtool:storage Temp.YRotation int 1 run scoreboard players get #temp worldtool
execute if data storage worldtool:storage Temp.ShapeSettings.YRotation run item modify entity @s weapon.mainhand worldtool:shape_tool/settings/set_y_rotation

function worldtool:ui_shapes/menu
