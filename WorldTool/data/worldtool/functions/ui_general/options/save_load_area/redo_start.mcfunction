# Called by worldtool:ui_general/options/menu
# Starts the redo process

function #rx.playerdb:api/v2/get/self

data modify storage rx.playerdb:io player.data.WorldTool.History append from storage rx.playerdb:io player.data.WorldTool.Future[0]
data remove storage rx.playerdb:io player.data.WorldTool.Future[0]

function #rx.playerdb:api/v2/save/self

function worldtool:ui_general/options/save_load_area/remove_load_tags

tag @s add wt.load_area.redo
tag @s add wt.setup.load_area

function worldtool:process_start/common/load
