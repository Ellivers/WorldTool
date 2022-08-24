# Called by worldtool:ui_general/page1
# Turns off particle outlines

scoreboard players operation #ID_temp worldtool = @s wt.ID
tag @s remove wt.helper_particles

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.position] if score @s wt.ID = #ID_temp worldtool run tag @s remove wt.particles
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool run tag @s remove wt.particles

execute if entity @s[tag=wt.menu.options] run function worldtool:ui_general/options/menu
execute if entity @s[tag=wt.menu.shapes.options] run function worldtool:ui_shapes/options/menu

function #worldtool:addon/particles/off
