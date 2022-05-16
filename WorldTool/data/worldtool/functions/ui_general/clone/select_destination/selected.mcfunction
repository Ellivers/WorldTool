# Called by worldtool:use_tool/ray_hit/load

scoreboard players set #success worldtool 1

item modify entity @s weapon.mainhand worldtool:general_tool/pos1
function worldtool:ui_general/clone/start
