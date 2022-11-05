# Called by worldtool:ui_general/page1
# Initiates the repeat menu

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

scoreboard players set @s wt.amountX 0
scoreboard players set @s wt.amountY 0
scoreboard players set @s wt.amountZ 0
scoreboard players set @s wt.size 0

function worldtool:ui_general/input/start/secondary
function worldtool:ui_general/repeat/menu
