# Called by the advancement worldtool:pick_up_general_tool
# Toggles the general tool between position 1 & 2

advancement revoke @s only worldtool:pick_up_general_tool
tag @s remove wt.general_tool_thrown

execute if predicate worldtool:tools/general/pos1 run tag @s add wt.holding_pos1
execute if entity @s[tag=wt.holding_pos1] run item modify entity @s weapon.mainhand worldtool:general_tool/pos2
execute if entity @s[tag=!wt.holding_pos1,predicate=worldtool:tools/general/pos2] run item modify entity @s weapon.mainhand worldtool:general_tool/pos1

tag @s remove wt.holding_pos1
