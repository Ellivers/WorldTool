# Called by worldtool:particles/general_selection/load
# Checks which direction the particles should go in

execute if entity @s[tag=wt.particle_direction.x.negative] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:particles/general_selection/pos1/x/minus
execute if entity @s[tag=wt.particle_direction.x.positive] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:particles/general_selection/pos1/x/plus
execute if entity @s[tag=wt.particle_direction.y.negative] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:particles/general_selection/pos1/y/minus
execute if entity @s[tag=wt.particle_direction.y.positive] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:particles/general_selection/pos1/y/plus
execute if entity @s[tag=wt.particle_direction.z.negative] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:particles/general_selection/pos1/z/minus
execute if entity @s[tag=wt.particle_direction.z.positive] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:particles/general_selection/pos1/z/plus
