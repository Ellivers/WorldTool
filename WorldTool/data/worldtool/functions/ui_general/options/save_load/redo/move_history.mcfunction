# Called by worldtool:ui_general/options/save_load/redo/start
# Moves the backup history one step

data modify storage rx.playerdb:io player.data.WorldTool.History append from storage rx.playerdb:io player.data.WorldTool.Current
data modify storage rx.playerdb:io player.data.WorldTool.Current set from storage rx.playerdb:io player.data.WorldTool.Future[0]
data remove storage rx.playerdb:io player.data.WorldTool.Future[0]
