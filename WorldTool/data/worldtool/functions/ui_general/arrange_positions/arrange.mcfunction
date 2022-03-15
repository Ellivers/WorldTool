# Called by worldtool:ui_general/arrange_positions/pos1 worldtool:ui_general/arrange_positions/pos2
# Arranges the positions and sets positioning tags

tag @s add wt.particles

tag @s remove wt.particle_direction.x.positive
tag @s remove wt.particle_direction.x.negative
tag @s remove wt.particle_direction.y.positive
tag @s remove wt.particle_direction.y.negative
tag @s remove wt.particle_direction.z.positive
tag @s remove wt.particle_direction.z.negative

execute if score #pos1xt worldtool < #pos2xt worldtool run tag @s add wt.particle_direction.x.positive
execute if score #pos1xt worldtool > #pos2xt worldtool run tag @s add wt.particle_direction.x.negative
execute if score #pos1yt worldtool < #pos2yt worldtool run tag @s add wt.particle_direction.y.positive
execute if score #pos1yt worldtool > #pos2yt worldtool run tag @s add wt.particle_direction.y.negative
execute if score #pos1zt worldtool < #pos2zt worldtool run tag @s add wt.particle_direction.z.positive
execute if score #pos1zt worldtool > #pos2zt worldtool run tag @s add wt.particle_direction.z.negative

execute align xyz run tp @s ~ ~ ~
execute at @s[tag=wt.particle_direction.x.negative] align x run tp @s ~.999 ~ ~
execute at @s[tag=wt.particle_direction.y.negative] align y run tp @s ~ ~.999 ~
execute at @s[tag=wt.particle_direction.z.negative] align z run tp @s ~ ~ ~.999
