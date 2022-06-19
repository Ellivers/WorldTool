# Called by worldtool:technical/common/save_load_area/area_saved
# Adds a future entry

function #rx.playerdb:api/v2/get/self

execute unless data storage rx.playerdb:io player.data.WorldTool.Future run data modify storage rx.playerdb:io player.data.WorldTool.Future set value []
data modify storage rx.playerdb:io player.data.WorldTool.Future append value {Pos:[0d,0d,0d],TemplateList:[]}
data modify storage rx.playerdb:io player.data.WorldTool.Future[0].TemplateList set from storage worldtool:storage Processes[-1].Output

execute store result storage rx.playerdb:io player.data.WorldTool.Future[0].Pos[0] double 1 run scoreboard players get #pos1xo worldtool
execute store result storage rx.playerdb:io player.data.WorldTool.Future[0].Pos[1] double 1 run scoreboard players get #pos1yo worldtool
execute store result storage rx.playerdb:io player.data.WorldTool.Future[0].Pos[2] double 1 run scoreboard players get #pos1zo worldtool

function #rx.playerdb:api/v2/save/self

function worldtool:ui_general/options/menu
