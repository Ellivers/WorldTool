# Called by worldtool:use_tool/raycast/ray_through, worldtool:use_tool/raycast/ray_hybrid, and worldtool:use_tool/raycast/ray_stop
# Commands for when the ray reaches its destination

scoreboard players set #raycastComplete worldtool 1

execute if entity @s[tag=wt.raycast.click] run function worldtool:use_tool/click/ray_hit/load
execute if entity @s[tag=wt.raycast.hold] align xyz positioned ~.5 ~ ~.5 run function worldtool:use_tool/hold/ray_hit/load
execute if entity @s[tag=wt.raycast.clone_preview] align xyz positioned ~.5 ~ ~.5 run function worldtool:particles/clone_preview/display

tag @s remove wt.raycast.click
# Doesn't remove wt.raycast.hold because it's checked for later

function #worldtool:hooks/use_tool/raycast/done
