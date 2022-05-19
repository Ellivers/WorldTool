# Called by worldtool:particles/clone_preview/load and worldtool:particles/clone_preview/raycast
# Displays clone preview particles

function worldtool:ui_general/clone/get_rotation_offset/load

scoreboard players operation #pos2xt worldtool = #pos1xt worldtool
scoreboard players operation #pos2xt worldtool += #offsetX worldtool
scoreboard players operation #pos2yt worldtool = #pos1yt worldtool
scoreboard players operation #pos2yt worldtool += #offsetY worldtool
scoreboard players operation #pos2zt worldtool = #pos1zt worldtool
scoreboard players operation #pos2zt worldtool += #offsetZ worldtool

function worldtool:technical/common/temp_entity
execute as d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/clone_preview/display.entity
execute at d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/clone_preview/pos1/load

scoreboard players operation #pos1xt worldtool >< #pos2xt worldtool
scoreboard players operation #pos1yt worldtool >< #pos2yt worldtool
scoreboard players operation #pos1zt worldtool >< #pos2zt worldtool

execute as d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/clone_preview/display.entity
execute at d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/clone_preview/pos2/load

kill d43b8e30-51cc-4da0-918a-60a557ae676f
