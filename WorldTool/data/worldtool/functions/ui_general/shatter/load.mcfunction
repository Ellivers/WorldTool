# Called by worldtool:ui_general/page2
# Loads the shatter menu

execute if score $keepMenuOptions worldtool matches 0 run tag @s remove wt.shatter.drop_items
function worldtool:ui_general/shatter/menu
