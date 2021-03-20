# A too big selected area leads to a ton of lag. This function is here to check, and perhaps warn you
tag @s remove nomeasuredonemessageplzthx
tag @s remove wt_measuring_area_clone
execute unless score $sizeWarnLimit worldtool matches ..0 if score $blocksplaced worldtool >= $sizeWarnLimit worldtool run function worldtool:ui_general/menus/clone/size_warning
execute unless score $sizeWarnLimit worldtool matches ..0 unless score $blocksplaced worldtool >= $sizeWarnLimit worldtool run function worldtool:ui_general/menus/clone/start.check3
execute if score $sizeWarnLimit worldtool matches ..0 run function worldtool:ui_general/menus/clone/start.check3
