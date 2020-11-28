tag @s remove wt_no_loop_plz
execute unless entity @s[tag=wt_no_loop_plz] if predicate worldtool:orientation/up run function worldtool:ui/generation_tool/orientation/down
execute unless entity @s[tag=wt_no_loop_plz] if predicate worldtool:orientation/down run function worldtool:ui/generation_tool/orientation/north
execute unless entity @s[tag=wt_no_loop_plz] if predicate worldtool:orientation/north run function worldtool:ui/generation_tool/orientation/south
execute unless entity @s[tag=wt_no_loop_plz] if predicate worldtool:orientation/south run function worldtool:ui/generation_tool/orientation/east
execute unless entity @s[tag=wt_no_loop_plz] if predicate worldtool:orientation/east run function worldtool:ui/generation_tool/orientation/west
execute unless entity @s[tag=wt_no_loop_plz] if predicate worldtool:orientation/west run function worldtool:ui/generation_tool/orientation/up
tag @s remove wt_no_loop_plz
