# Called by worldtool:particles/player
# Displays clone preview particles

execute if entity @s[predicate=worldtool:tools/general/pastepos] run function worldtool:particles/paste_preview/raycast_start
execute if entity @s[predicate=!worldtool:tools/general/pastepos] run function worldtool:particles/paste_preview/display
