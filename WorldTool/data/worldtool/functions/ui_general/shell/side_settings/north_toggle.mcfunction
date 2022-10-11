# Called by worldtool:ui_general/shell/side_settings
# Toggles a side

tag @s[tag=wt.shell.side.north] add wt.temp
tag @s[tag=wt.temp] remove wt.shell.side.north
tag @s[tag=!wt.temp] add wt.shell.side.north

tag @s remove wt.temp

function worldtool:ui_general/shell/side_settings
