# Called by worldtool:particles/display
# Loads the shape previews

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @a if score @s wt.ID = #ID_temp worldtool run tag @s add wt.shape_preview_temp

execute if entity @s[tag=wt.shape.cylinder.up] run function worldtool:particles/shape_preview/cylinder_up/load
execute if entity @s[tag=wt.shape.cylinder.down] run function worldtool:particles/shape_preview/cylinder_down/load

function #worldtool:addon/particles/shape_previews

tag @a[tag=wt.shape_preview_temp] remove wt.shape_preview_temp

tp ~ ~ ~
