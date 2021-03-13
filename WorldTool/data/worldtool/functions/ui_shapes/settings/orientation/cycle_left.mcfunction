tag @s remove wt_no_loop_plz
execute if predicate worldtool:orientation/up run function worldtool:ui_shapes/orientation/west
execute if predicate worldtool:orientation/down run function worldtool:ui_shapes/orientation/up
execute if predicate worldtool:orientation/north run function worldtool:ui_shapes/orientation/down
execute if predicate worldtool:orientation/south run function worldtool:ui_shapes/orientation/north
execute if predicate worldtool:orientation/east run function worldtool:ui_shapes/orientation/south
execute unless entity @s[tag=wt_no_loop_plz] if predicate worldtool:orientation/west run function worldtool:ui_shapes/orientation/east
tag @s remove wt_no_loop_plz
