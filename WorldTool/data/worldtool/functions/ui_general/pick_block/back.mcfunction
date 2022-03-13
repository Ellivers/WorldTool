# Called by worldtool:ui_general/pick_block/pick_block
# Goes back from the pick block "menu"

item modify entity @s weapon.mainhand worldtool:general_tool/pos1
function worldtool:ui/sound.change_item

tag @s remove wt.pick_block.primary
tag @s remove wt.pick_block.secondary

function worldtool:ui/reopen_menu/after_starting/from_submenu
