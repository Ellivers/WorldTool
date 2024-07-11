# Called by worldtool:ui_shapes/schedule_menu/done
# Opens the menu if possible

tag @s remove wt.schedule_menu.shapes

execute unless predicate worldtool:tools/shapes run tellraw @s {"nbt":"Translation.\"info.item_position\"","storage": "worldtool:storage"}
execute if predicate worldtool:tools/shapes run function worldtool:ui_shapes/menu
