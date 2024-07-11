# Called by worldtool:particles/randomization_source_selection/display
# Checks which direction the particles should go in

execute if score #pos1xt worldtool > #pos2xt worldtool run function worldtool:particles/randomization_source_selection/pos2/x/minus
execute if score #pos1xt worldtool <= #pos2xt worldtool run function worldtool:particles/randomization_source_selection/pos2/x/plus
execute if score #pos1yt worldtool > #pos2yt worldtool run function worldtool:particles/randomization_source_selection/pos2/y/minus
execute if score #pos1yt worldtool <= #pos2yt worldtool run function worldtool:particles/randomization_source_selection/pos2/y/plus
execute if score #pos1zt worldtool > #pos2zt worldtool run function worldtool:particles/randomization_source_selection/pos2/z/minus
execute if score #pos1zt worldtool <= #pos2zt worldtool run function worldtool:particles/randomization_source_selection/pos2/z/plus
