# Called by various functions
# Measures the area

# 't' = temporary
# 'gtr' = 'greater' & 'lsr' = 'lesser'
execute if score #pos1xt worldtool > #pos2xt worldtool run function worldtool:measure/x/gtr
execute if score #pos1xt worldtool < #pos2xt worldtool run function worldtool:measure/x/lsr

execute if score #pos1yt worldtool > #pos2yt worldtool run function worldtool:measure/y/gtr
execute if score #pos1yt worldtool < #pos2yt worldtool run function worldtool:measure/y/lsr

execute if score #pos1zt worldtool > #pos2zt worldtool run function worldtool:measure/z/gtr
execute if score #pos1zt worldtool < #pos2zt worldtool run function worldtool:measure/z/lsr

function worldtool:measure/done
