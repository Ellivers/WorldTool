# Called by worldtool:process_start/variables, as all randomization point entities
# Sets which points to use for this process

tag @s remove wt.select_random
execute if score @s wt.ID = #ID_temp worldtool run tag @s add wt.select_random
