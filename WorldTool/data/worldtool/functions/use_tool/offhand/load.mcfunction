# Called by the advancement worldtool:switch_to_offhand
# Commands for when a WorldTool tool is put in the offhand

advancement revoke @s only worldtool:switch_to_offhand

scoreboard players set #temp worldtool 0
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with minecraft:air

scoreboard players add #temp worldtool 1

execute if score #temp worldtool matches 1 if entity @s[predicate=worldtool:tools/general,predicate=worldtool:common_settings/control_scheme/normal] run function worldtool:ui_general/click/load
execute if score #temp worldtool matches 1 if entity @s[predicate=worldtool:tools/general,predicate=worldtool:common_settings/control_scheme/limited] run function worldtool:ui_general/set_tool/switch
execute if score #temp worldtool matches 1 if entity @s[predicate=worldtool:tools/general,predicate=worldtool:common_settings/control_scheme/limited] run function worldtool:ui/sound.change_item

execute if score #temp worldtool matches 1 if entity @s[predicate=worldtool:tools/brush,predicate=worldtool:common_settings/control_scheme/limited] run function worldtool:ui_brush/menu

execute if score #temp worldtool matches 1 if entity @s[predicate=worldtool:tools/shapes,predicate=worldtool:common_settings/control_scheme/limited] run function worldtool:ui_shapes/menu
