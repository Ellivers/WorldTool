# Called by various functions
# Resets the tool to its initial state 

item modify entity @s[predicate=worldtool:tools/general] weapon.mainhand worldtool:general_tool/pos1

execute if predicate worldtool:common_settings/control_scheme/limited run item modify entity @s[predicate=worldtool:tools/general] weapon.mainhand worldtool:general_tool/control_scheme/limited
