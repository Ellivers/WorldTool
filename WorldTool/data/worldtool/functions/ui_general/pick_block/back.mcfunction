# Called by worldtool:ui_general/pick_block/pick_block
# Goes back from the pick block "menu"

item modify entity @s weapon.mainhand worldtool:general_tool/pos1
function worldtool:ui/sound.change_item

tag @s remove wt.pick_block.primary
tag @s remove wt.pick_block.secondary

execute if entity @s[tag=wt.menu.general.p1] run function worldtool:ui_general/load
execute if entity @s[tag=wt.menu.two_block_query.2] run function worldtool:ui/two_block_query/display/2
execute if entity @s[tag=wt.menu.two_block_query.3] run function worldtool:ui/two_block_query/display/3
function #worldtool:addon/pick_block/back
