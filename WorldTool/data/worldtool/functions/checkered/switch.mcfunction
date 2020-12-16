# Switches placing and not placing blocks, to make the pattern work.
execute if score $checkered worldtool matches 1 run tag @s add switching
execute if score $checkered worldtool matches 1 run scoreboard players set $checkered worldtool 0
execute if entity @s[tag=!switching] if score $checkered worldtool matches 0 run scoreboard players set $checkered worldtool 1
tag @s remove switching
function worldtool:checkered/run
