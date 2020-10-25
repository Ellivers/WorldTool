# A too big selected area leads to a ton of lag. This function is here to check, and perhaps warn you
tag @s remove nomeasuredonemessageplzthx
tag @s remove wt_measuring_area
execute unless score $blocksplaced worldtool matches 99999.. run function worldtool:load_process/start_check3
execute if score $blocksplaced worldtool matches 99999.. run function worldtool:ui/size_warning