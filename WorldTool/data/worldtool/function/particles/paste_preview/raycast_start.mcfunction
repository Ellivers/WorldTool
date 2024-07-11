# Called by worldtool:particles/paste_preview/load
# Finds the block the player is looking at

scoreboard players operation #temp2 worldtool = $maxRaycastingDistance worldtool
scoreboard players operation #temp2 worldtool *= #2 worldtool
scoreboard players set #temp worldtool 0
execute anchored eyes positioned ^ ^ ^ run function worldtool:particles/paste_preview/raycast
