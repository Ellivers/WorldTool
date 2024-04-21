# Called by worldtool:particles/clock
# Displays the particles

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute if entity @s[type=minecraft:player] run function worldtool:particles/player
execute if entity @s[tag=wt.position] run function worldtool:particles/general_selection/load
execute if entity @s[tag=wt.rotation_preview] as @a if score @s wt.ID = #ID_temp worldtool positioned ~ ~1.8 ~ run function worldtool:particles/colors/clone_rotation_origin
execute if entity @s[tag=wt.shape_position] run function worldtool:particles/shape_preview/load

function #worldtool:hooks/particles/display
