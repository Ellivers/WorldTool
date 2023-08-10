# Called by the advancement worldtool:switch_to_offhand
# Commands for when a WorldTool tool is put in the offhand

execute store success score #temp worldtool if predicate worldtool:tools/in_offhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with minecraft:air

advancement revoke @s only worldtool:switch_to_offhand

execute if score #temp worldtool matches 1 if entity @s[predicate=worldtool:tools/general,predicate=worldtool:common_settings/control_scheme/normal] run function worldtool:ui_general/click/load
execute if score #temp worldtool matches 1 if entity @s[predicate=worldtool:tools/general,predicate=worldtool:common_settings/control_scheme/limited] run function worldtool:ui_general/set_tool/switch
execute if score #temp worldtool matches 1 if entity @s[predicate=worldtool:tools/general,predicate=worldtool:common_settings/control_scheme/limited] run function worldtool:ui/sound.change_item

execute if score #temp worldtool matches 1 if entity @s[predicate=worldtool:tools/brush,predicate=worldtool:common_settings/control_scheme/limited] run function worldtool:ui_brush/menu

execute if score #temp worldtool matches 1 if entity @s[predicate=worldtool:tools/shapes,predicate=worldtool:common_settings/control_scheme/limited] run function worldtool:ui_shapes/menu

function #worldtool:hooks/use_tool/offhand
