# Called by worldtool:particles/paste_preview/load and worldtool:particles/paste_preview/raycast
# Displays a preview of the clipboard area

function worldtool:technical/common/temp_entity

execute as d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:technical/common/temp_pos1

function #rx.playerdb:api/v2/get/self

execute store result score #pos2xt worldtool run data get storage rx.playerdb:io player.data.WorldTool.Clipboard[0].Size[0]
scoreboard players operation #pos2xt worldtool += #pos1xt worldtool
execute store result score #pos2yt worldtool run data get storage rx.playerdb:io player.data.WorldTool.Clipboard[0].Size[1]
scoreboard players operation #pos2yt worldtool += #pos1yt worldtool
execute store result score #pos2zt worldtool run data get storage rx.playerdb:io player.data.WorldTool.Clipboard[0].Size[2]
scoreboard players operation #pos2zt worldtool += #pos1zt worldtool

scoreboard players operation #particlePosX worldtool = #pos1xt worldtool
scoreboard players operation #particlePosY worldtool = #pos1yt worldtool
scoreboard players operation #particlePosZ worldtool = #pos1zt worldtool

execute as d43b8e30-51cc-4da0-918a-60a557ae676f at @s align xyz run tp ~ ~ ~
execute at d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/paste_preview/pos1/load

scoreboard players remove #pos2xt worldtool 1
scoreboard players remove #pos2yt worldtool 1
scoreboard players remove #pos2zt worldtool 1

scoreboard players operation #pos1xt worldtool >< #pos2xt worldtool
scoreboard players operation #pos1yt worldtool >< #pos2yt worldtool
scoreboard players operation #pos1zt worldtool >< #pos2zt worldtool

scoreboard players remove #pos2xt worldtool 1
scoreboard players remove #pos2yt worldtool 1
scoreboard players remove #pos2zt worldtool 1

execute as d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/paste_preview/display.entity.pos2
execute at d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/paste_preview/pos2/load

kill d43b8e30-51cc-4da0-918a-60a557ae676f
