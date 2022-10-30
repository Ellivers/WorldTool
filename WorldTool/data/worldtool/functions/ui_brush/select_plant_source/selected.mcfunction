# Called by various plant source selection functions in worldtool:ui_general/greenery/plant_sources/
# Converts the selected tag into brush data

item modify entity @s[tag=wt.greenery.source.plains] weapon.mainhand worldtool:brush_tool/settings/plant_source/plains
item modify entity @s[tag=wt.greenery.source.sunflower_plains] weapon.mainhand worldtool:brush_tool/settings/plant_source/sunflower_plains
item modify entity @s[tag=wt.greenery.source.flower_forest] weapon.mainhand worldtool:brush_tool/settings/plant_source/flower_forest
item modify entity @s[tag=wt.greenery.source.taiga] weapon.mainhand worldtool:brush_tool/settings/plant_source/taiga
item modify entity @s[tag=wt.greenery.source.desert] weapon.mainhand worldtool:brush_tool/settings/plant_source/desert
item modify entity @s[tag=wt.greenery.source.ocean] weapon.mainhand worldtool:brush_tool/settings/plant_source/ocean
item modify entity @s[tag=wt.greenery.source.warm_ocean] weapon.mainhand worldtool:brush_tool/settings/plant_source/warm_ocean

function #worldtool:addon/greenery/brush/set_source

function worldtool:ui_general/greenery/plant_sources/remove_all

function worldtool:ui_brush/menu
