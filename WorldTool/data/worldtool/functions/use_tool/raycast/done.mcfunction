# Called by worldtool:use_tool/raycast/ray
# Commands for when the ray reaches its destination

scoreboard players set #raycastComplete worldtool 1

execute if entity @s[tag=wt.raycast.click] run function worldtool:use_tool/click/ray_hit/load
execute if entity @s[tag=wt.raycast.hold] align xyz positioned ~.5 ~ ~.5 run function worldtool:use_tool/hold/ray_hit/load

tag @s remove wt.raycast.click
# Doesn't remove wt.raycast.click because it's checked for later

function #worldtool:hooks/use_tool/raycast/done
