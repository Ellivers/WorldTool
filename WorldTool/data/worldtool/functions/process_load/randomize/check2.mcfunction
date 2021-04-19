# A too big source area leads to a ton of lag. This function is here to check, and perhaps warn you
tag @s remove nomeasuredonemessageplzthx
execute if score $blocksplaced worldtool matches 9999.. run function worldtool:ui_general/menus/randomize/warning
execute unless score $blocksplaced worldtool matches 9999.. run function worldtool:process_load/randomize/check3
