# Called by worldtool:ui_shapes/menu and worldtool:ui/particles/on
# Updates the shape preview

scoreboard players set #yRotEnabled worldtool 0
execute if entity @s[tag=wt.setting.y_rotation] run scoreboard players set #yRotEnabled worldtool 1
scoreboard players set #xRotEnabled worldtool 0
execute unless entity @s[tag=!wt.setting.x_rotation,tag=!wt.setting.z_rotation] run scoreboard players set #xRotEnabled worldtool 1

function #worldtool:hooks/ui_shapes/set_preview_axes

execute if data storage worldtool:storage Temp.ShapeTool.ShapeSettings{Orientation:"auto"} run tag @s add wt.temp

execute if entity @s[tag=!wt.temp] run data modify storage worldtool:storage Temp.ShapeTool.Temp.Orientation set from storage worldtool:storage Temp.ShapeTool.ShapeSettings.Orientation
execute if entity @s[tag=wt.temp] if data storage worldtool:storage Temp.InitialOrientation run data modify storage worldtool:storage Temp.ShapeTool.Temp.Orientation set from storage worldtool:storage Temp.InitialOrientation
data remove storage worldtool:storage Temp.InitialOrientation
item modify entity @s weapon.mainhand worldtool:shape_tool/set_temp_orientation

tag @s remove wt.temp


scoreboard players operation #ID_temp worldtool = @s wt.ID

execute store success score #updatePreview worldtool unless entity @s[tag=!wt.helper_particles.in_menu,tag=!wt.helper_particles.always]

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:ui_shapes/update_preview/pos
