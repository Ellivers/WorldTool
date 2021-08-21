# Measures the area

execute if entity @s[tag=!nomeasuredonemessageplzthx] run tag @s remove in_menu

# 'gtr' = 'greater' & 'lsr' = 'lesser'
execute if score $pos1xm worldtool > $pos2xm worldtool run function worldtool:measure/x/gtr
execute if score $pos1xm worldtool < $pos2xm worldtool run function worldtool:measure/x/lsr

execute if score $pos1ym worldtool > $pos2ym worldtool run function worldtool:measure/y/gtr
execute if score $pos1ym worldtool < $pos2ym worldtool run function worldtool:measure/y/lsr

execute if score $pos1zm worldtool > $pos2zm worldtool run function worldtool:measure/z/gtr
execute if score $pos1zm worldtool < $pos2zm worldtool run function worldtool:measure/z/lsr

function worldtool:measure/done