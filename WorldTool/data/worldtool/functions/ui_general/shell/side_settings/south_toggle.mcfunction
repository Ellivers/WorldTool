# Called by worldtool:ui_general/shell/side_settings
# Toggles a side

tag @s[tag=wt.shell.side.south] add wt.temp
tag @s[tag=wt.temp] remove wt.shell.side.south
tag @s[tag=!wt.temp] add wt.shell.side.south

tag @s remove wt.temp

function worldtool:ui_general/shell/side_settings
