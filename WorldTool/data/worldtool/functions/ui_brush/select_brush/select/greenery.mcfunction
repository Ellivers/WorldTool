# Called by worldtool:ui_brush/select_brush/menu
# Selects the greenery brush

function worldtool:ui_brush/check_tool

item modify entity @s weapon.mainhand worldtool:brush_tool/brushes/greenery
function worldtool:ui/sound.change_item
function worldtool:ui_brush/set_tooltip

execute unless data entity @s SelectedItem.tag.WorldTool.BrushSettings.GreeneryRate run data modify storage worldtool:storage Temp.GreeneryRate set value 50
execute unless data entity @s SelectedItem.tag.WorldTool.BrushSettings.GreeneryRate run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/set_greenery_rate
execute unless data entity @s SelectedItem.tag.WorldTool.BrushSettings.PlantSource run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/plant_source/plains

item modify entity @s[predicate=worldtool:brush_tool/settings/plant_source/sunflower_plains] weapon.mainhand worldtool:brush_tool/settings/plant_source/sunflower_plains
item modify entity @s[predicate=worldtool:brush_tool/settings/plant_source/flower_forest] weapon.mainhand worldtool:brush_tool/settings/plant_source/flower_forest
item modify entity @s[predicate=worldtool:brush_tool/settings/plant_source/taiga] weapon.mainhand worldtool:brush_tool/settings/plant_source/taiga
item modify entity @s[predicate=worldtool:brush_tool/settings/plant_source/desert] weapon.mainhand worldtool:brush_tool/settings/plant_source/desert
item modify entity @s[predicate=worldtool:brush_tool/settings/plant_source/ocean] weapon.mainhand worldtool:brush_tool/settings/plant_source/ocean
item modify entity @s[predicate=worldtool:brush_tool/settings/plant_source/warm_ocean] weapon.mainhand worldtool:brush_tool/settings/plant_source/warm_ocean

execute if score $greeneryPlugins worldtool matches 1.. run function #worldtool:hooks/greenery/brush/select_brush

function worldtool:ui_brush/menu
