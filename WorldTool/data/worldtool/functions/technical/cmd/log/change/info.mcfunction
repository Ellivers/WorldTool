# Called by worldtool:cmd/view_log
# Toggles displaying info log messages

function #rx.playerdb:api/v2/get/self
execute if data storage rx.playerdb:io player.data.WorldTool.LogView{info:1b} run tag @s add wt.temp
execute if entity @s[tag=wt.temp] run data modify storage rx.playerdb:io player.data.WorldTool.LogView.info set value 0b
execute if entity @s[tag=!wt.temp] run data modify storage rx.playerdb:io player.data.WorldTool.LogView.info set value 1b
tag @s remove wt.temp
function #rx.playerdb:api/v2/save/self

function worldtool:cmd/view_log
