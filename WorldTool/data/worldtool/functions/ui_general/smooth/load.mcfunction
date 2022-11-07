# Called by worldtool:ui_general/page2

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

tag @s add wt.smooth.direction.up
tag @s remove wt.smooth.direction.down
tag @s add wt.smooth.direction.east
tag @s add wt.smooth.direction.west
tag @s add wt.smooth.direction.north
tag @s add wt.smooth.direction.south

scoreboard players set @s wt.size 20

function worldtool:ui_general/input/start/secondary

function worldtool:ui_general/smooth/menu
