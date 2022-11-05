# Called by worldtool:ui_general/page1

function worldtool:ui_general/input/start/both
tag @s remove wt.shell.inner_block

tag @s add wt.shell.side.up
tag @s add wt.shell.side.down
tag @s add wt.shell.side.north
tag @s add wt.shell.side.south
tag @s add wt.shell.side.east
tag @s add wt.shell.side.west

scoreboard players set @s wt.size 1

function worldtool:ui_general/shell/menu
