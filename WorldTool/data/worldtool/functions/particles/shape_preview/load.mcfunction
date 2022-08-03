# Called by worldtool:particles/display
# Loads the shape previews

execute if entity @s[tag=wt.shape.cylinder.vertical] run function worldtool:particles/shape_preview/cylinder_vertical/load

function #worldtool:addon/particles/shape_previews
