execute unless entity @s[tag=measuring,tag=!filtered,tag=!filtered_reversed] if entity @s[tag=!brush_cmd,tag=!wt_struct_corner_place] run function worldtool:cmd/load2
execute if entity @s[tag=measuring,tag=!filtered,tag=!filtered_reversed] run function worldtool:cmd/measure
execute if entity @s[tag=brush_cmd] run function worldtool:cmd/load_brush_cmd
execute if entity @s[tag=wt_struct_corner_place] run function worldtool:cmd/load_struct_corner
