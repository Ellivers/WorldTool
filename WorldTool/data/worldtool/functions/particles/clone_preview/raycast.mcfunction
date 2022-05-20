# Called by worldtool:particles/clone_preview/raycast_start
# Finds the block the player is looking at

scoreboard players add #temp worldtool 1

execute positioned ^ ^ ^.5 unless block ~ ~ ~ #worldtool:air run function worldtool:particles/clone_preview/display
execute unless score #temp worldtool >= #temp2 worldtool positioned ^ ^ ^.5 if block ~ ~ ~ #worldtool:air run function worldtool:particles/clone_preview/raycast
