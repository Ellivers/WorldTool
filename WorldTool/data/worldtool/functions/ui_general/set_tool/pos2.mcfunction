# Called by various functions
# Sets the General Tool to Position 2 mode

item modify entity @s weapon.mainhand worldtool:general_tool/pos2
item modify entity @s[predicate=worldtool:common_settings/control_scheme/limited] weapon.mainhand worldtool:general_tool/control_scheme/limited
