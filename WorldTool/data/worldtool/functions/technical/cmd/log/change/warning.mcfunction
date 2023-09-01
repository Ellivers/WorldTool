# Called by worldtool:cmd/view_log
# Toggles displaying warning log messages

function #rx.playerdb:api/v2/get
execute if data storage rx.playerdb:io player.data.WorldTool.LogView{warning:1b} run tag @s add wt.temp
execute if entity @s[tag=wt.temp] run data modify storage rx.playerdb:io player.data.WorldTool.LogView.warning set value 0b
execute if entity @s[tag=!wt.temp] run data modify storage rx.playerdb:io player.data.WorldTool.LogView.warning set value 1b
tag @s remove wt.temp
function #rx.playerdb:api/v2/save

function worldtool:cmd/view_log
