# Called by worldtool:ui/particles/cycle_left and worldtool:ui/particles/cycle_right
# Where to go back after changing the particle option

function worldtool:ui_general/arrange_positions/remove_particles
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool run tag @s remove wt.particles

execute if entity @s[tag=wt.menu.options] run function worldtool:ui_general/options/menu

execute if entity @s[tag=wt.menu.shapes.options] unless entity @s[tag=!wt.helper_particles.in_menu,tag=!wt.helper_particles.always] run function worldtool:ui_shapes/update_preview/load
execute if entity @s[tag=wt.menu.shapes.options] run function worldtool:ui_shapes/options/menu

function #worldtool:hooks/particles/back
