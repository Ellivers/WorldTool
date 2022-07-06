# Called by worldtool:ui_general/pick_block/pick_block
# Goes back from the pick block "menu"

function worldtool:ui_general/reset_tool
function worldtool:ui/sound.change_item

tag @s remove wt.pick_block.primary
tag @s remove wt.pick_block.secondary

function worldtool:ui/reopen_menu/from_submenu
