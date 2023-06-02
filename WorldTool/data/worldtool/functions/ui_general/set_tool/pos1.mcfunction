# Called by various functions
# Sets the General Tool to Position 1 mode

item modify entity @s weapon.mainhand worldtool:general_tool/pos1
item modify entity @s[predicate=worldtool:tools/settings/control_scheme/limited] weapon.mainhand worldtool:general_tool/control_scheme/limited
