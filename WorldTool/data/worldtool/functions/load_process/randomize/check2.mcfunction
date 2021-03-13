# A too big source area leads to a ton of lag. This function is here to check, and perhaps warn you
tag @s remove nomeasuredonemessageplzthx
execute unless score $blocksplaced worldtool matches 9999.. run function worldtool:load_process/randomize/check3
execute if score $blocksplaced worldtool matches 9999.. run function worldtool:ui_general/random/warning