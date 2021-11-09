# Called by INSERT_FUNCTION
# Places the positions for a cylinder preview

data modify storage worldtool:storage Temp.Orientation set from entity @s SelectedItem.tag.WorldTool.ShapeSettings.Orientation
data modify storage worldtool:storage Temp.PointType set from entity @s SelectedItem.tag.WorldTool.Shape
function worldtool:use_shapes/preview_layout/get_base_pos
function worldtool:use_shapes/preview_layout/get_radius
function worldtool:use_shapes/preview_layout/get_orientation

function worldtool:use_shapes/preview_layout/common_circle/load
execute if score #temp.orientation worldtool matches 1 run scoreboard players operation #temp.centerY worldtool += #temp.radius worldtool
execute if score #temp.orientation worldtool matches 2 run scoreboard players operation #temp.centerY worldtool -= #temp.radius worldtool
    execute if score #temp.orientation worldtool matches 3 run scoreboard players operation #temp.centerX worldtool -= #temp.radius worldtool
    execute if score #temp.orientation worldtool matches 4 run scoreboard players operation #temp.centerX worldtool += #temp.radius worldtool
    execute if score #temp.orientation worldtool matches 5 run scoreboard players operation #temp.centerZ worldtool += #temp.radius worldtool
    execute if score #temp.orientation worldtool matches 6 run scoreboard players operation #temp.centerZ worldtool -= #temp.radius worldtool
function worldtool:use_shapes/preview_layout/common_circle/load
