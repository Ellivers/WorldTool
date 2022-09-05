# Called by worldtool:particles/display
# Loads the shape previews

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @a if score @s wt.ID = #ID_temp worldtool run tag @s add wt.shape_preview_temp

execute if entity @s[tag=wt.shape.cylinder.up] run function worldtool:particles/shape_preview/cylinder_up/load
execute if entity @s[tag=wt.shape.cylinder.down] run function worldtool:particles/shape_preview/cylinder_down/load
execute if entity @s[tag=wt.shape.cylinder.horizontal] run function worldtool:particles/shape_preview/cylinder_horizontal/load
execute if entity @s[tag=wt.shape.cone.vertical] run function worldtool:particles/shape_preview/cone_vertical/load
execute if entity @s[tag=wt.shape.cone.horizontal] run function worldtool:particles/shape_preview/cone_horizontal/load

function #worldtool:addon/particles/shape_previews

tag @a[tag=wt.shape_preview_temp] remove wt.shape_preview_temp

tp ~ ~ ~
