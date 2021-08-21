# A too big selected area leads to a ton of lag. This function is here to check, and perhaps warn you
tag @s remove nomeasuredonemessageplzthx
tag @s remove wt_measuring_area_clone
execute unless score $blocksplaced worldtool matches 99999.. run function worldtool:ui/clone/start.check3
execute if score $blocksplaced worldtool matches 99999.. run function worldtool:ui/clone/size_warning