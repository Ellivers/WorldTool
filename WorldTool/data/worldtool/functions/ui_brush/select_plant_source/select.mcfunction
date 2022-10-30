# Called by worldtool:ui_brush/menu
# Hacky way to reuse the same menu lol

function worldtool:ui_general/greenery/plant_sources/remove_all
tag @s[predicate=worldtool:brush_tool/settings/plant_source/plains] add wt.greenery.source.plains
tag @s[predicate=worldtool:brush_tool/settings/plant_source/sunflower_plains] add wt.greenery.source.sunflower_plains
tag @s[predicate=worldtool:brush_tool/settings/plant_source/flower_forest] add wt.greenery.source.flower_forest
tag @s[predicate=worldtool:brush_tool/settings/plant_source/taiga] add wt.greenery.source.taiga
tag @s[predicate=worldtool:brush_tool/settings/plant_source/desert] add wt.greenery.source.desert
tag @s[predicate=worldtool:brush_tool/settings/plant_source/ocean] add wt.greenery.source.ocean
tag @s[predicate=worldtool:brush_tool/settings/plant_source/warm_ocean] add wt.greenery.source.warm_ocean

function #worldtool:addon/greenery/brush/check_source

function worldtool:ui_general/greenery/plant_sources/menu
function worldtool:ui/remove_menu_tags
tag @s add wt.menu.brush.greenery.select_source
