# Called by various shape preview functions
# Draws a line to the tip of the cone

scoreboard players set #temp worldtool 0
execute facing entity d43b8e30-51cc-4da0-918a-60a557ae676f feet run function worldtool:particles/shape_preview/cone_vertical/line/loop
