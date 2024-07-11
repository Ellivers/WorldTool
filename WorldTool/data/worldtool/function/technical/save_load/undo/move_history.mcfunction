# Called by worldtool:technical/save_load/undo/start
# Moves the backup history one step

data modify storage rx.playerdb:io player.data.WorldTool.Future prepend from storage rx.playerdb:io player.data.WorldTool.Current
data modify storage rx.playerdb:io player.data.WorldTool.Current set from storage rx.playerdb:io player.data.WorldTool.History[-1]
data remove storage rx.playerdb:io player.data.WorldTool.History[-1]
