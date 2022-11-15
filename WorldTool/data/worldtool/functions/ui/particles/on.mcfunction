# Called by worldtool:ui_general/page1
# Turns on particle outlines

tag @s add wt.helper_particles

execute if entity @s[tag=wt.menu.options] run function worldtool:ui_general/options/menu

execute if entity @s[tag=wt.menu.shapes.options] run function worldtool:ui_shapes/update_preview/load
execute if entity @s[tag=wt.menu.shapes.options] run function worldtool:ui_shapes/options/menu

function #worldtool:hooks/particles/on
