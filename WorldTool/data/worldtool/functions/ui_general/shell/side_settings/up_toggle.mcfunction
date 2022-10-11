# Called by worldtool:ui_general/shell/side_settings
# Toggles a side

tag @s[tag=wt.shell.side.up] add wt.temp
tag @s[tag=wt.temp] remove wt.shell.side.up
tag @s[tag=!wt.temp] add wt.shell.side.up

tag @s remove wt.temp

function worldtool:ui_general/shell/side_settings
