# Called by worldtool:particles/display
# Checks if particles can be displayed

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @a[tag=wt.particles_enabled] if score @s wt.ID = #ID_temp worldtool
