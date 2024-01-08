# Called by worldtool:particles/clone_preview/load and worldtool:particles/clone_preview/raycast
# Displays clone preview particles

tag @s remove wt.raycast.clone_preview

function worldtool:ui_general/clone/get_rotation_offset/load

function worldtool:technical/common/temp_entity
execute as d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:technical/common/temp_pos1

scoreboard players operation #pos2xt worldtool = #pos1xt worldtool
scoreboard players operation #pos2xt worldtool += #offsetX worldtool
scoreboard players operation #pos2yt worldtool = #pos1yt worldtool
scoreboard players operation #pos2yt worldtool += #offsetY worldtool
scoreboard players operation #pos2zt worldtool = #pos1zt worldtool
scoreboard players operation #pos2zt worldtool += #offsetZ worldtool

execute if score #pos1xt worldtool < #pos2xt worldtool run scoreboard players add #pos2xt worldtool 1
execute if score #pos1yt worldtool < #pos2yt worldtool run scoreboard players add #pos2yt worldtool 1
execute if score #pos1zt worldtool < #pos2zt worldtool run scoreboard players add #pos2zt worldtool 1

execute if score #pos1xt worldtool >= #pos2xt worldtool run scoreboard players remove #pos2xt worldtool 1
execute if score #pos1yt worldtool >= #pos2yt worldtool run scoreboard players remove #pos2yt worldtool 1
execute if score #pos1zt worldtool >= #pos2zt worldtool run scoreboard players remove #pos2zt worldtool 1

execute as d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/clone_preview/display.entity.pos1
execute at d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/clone_preview/pos1/load

execute as d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/clone_preview/display.entity.pos2
execute at d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/clone_preview/pos2/load

kill d43b8e30-51cc-4da0-918a-60a557ae676f
