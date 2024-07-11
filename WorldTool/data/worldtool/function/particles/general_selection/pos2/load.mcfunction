# Called by worldtool:particles/general_selection/load
# Checks which direction the particles should go in

# scoreboard players operation #particlePosX worldtool = #pos2xt worldtool
# scoreboard players operation #particlePosY worldtool = #pos2yt worldtool
# scoreboard players operation #particlePosZ worldtool = #pos2zt worldtool

execute if entity @s[tag=wt.particle_direction.x.negative] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:particles/general_selection/pos2/x/minus
execute if entity @s[tag=wt.particle_direction.x.positive] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:particles/general_selection/pos2/x/plus
execute if entity @s[tag=wt.particle_direction.y.negative] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:particles/general_selection/pos2/y/minus
execute if entity @s[tag=wt.particle_direction.y.positive] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:particles/general_selection/pos2/y/plus
execute if entity @s[tag=wt.particle_direction.z.negative] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:particles/general_selection/pos2/z/minus
execute if entity @s[tag=wt.particle_direction.z.positive] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:particles/general_selection/pos2/z/plus
