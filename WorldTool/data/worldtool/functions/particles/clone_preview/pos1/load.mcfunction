# Called by worldtool:particles/clone_preview/display
# Checks which direction the particles should go in

execute if score #pos1xt worldtool > #pos2xt worldtool run function worldtool:particles/clone_preview/pos1/x/minus
execute if score #pos1xt worldtool <= #pos2xt worldtool run function worldtool:particles/clone_preview/pos1/x/plus
execute if score #pos1yt worldtool > #pos2yt worldtool run function worldtool:particles/clone_preview/pos1/y/minus
execute if score #pos1yt worldtool <= #pos2yt worldtool run function worldtool:particles/clone_preview/pos1/y/plus
execute if score #pos1zt worldtool > #pos2zt worldtool run function worldtool:particles/clone_preview/pos1/z/minus
execute if score #pos1zt worldtool <= #pos2zt worldtool run function worldtool:particles/clone_preview/pos1/z/plus
