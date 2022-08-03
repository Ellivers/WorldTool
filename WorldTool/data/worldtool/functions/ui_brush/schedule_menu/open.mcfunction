# Called by worldtool:ui_shapes/schedule_menu/done
# Opens the menu if possible

tag @s remove wt.schedule_menu.brush

execute unless predicate worldtool:tools/brush run tellraw @s {"nbt":"Translation.\"info.item_position\"","storage": "worldtool:storage"}
execute if predicate worldtool:tools/brush run function worldtool:ui_brush/menu
