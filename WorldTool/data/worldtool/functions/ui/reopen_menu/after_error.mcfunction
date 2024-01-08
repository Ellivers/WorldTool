# Called by various functions
# Re-opens the current menu (after an error)

execute if entity @s[tag=wt.menu.general.page1] run function worldtool:ui_general/load
execute if entity @s[tag=wt.menu.general.page2] run function worldtool:ui_general/load
execute if entity @s[tag=wt.menu.two_block_query.1] run function worldtool:ui_general/two_block_query/display/1
execute if entity @s[tag=wt.menu.two_block_query.2] run function worldtool:ui_general/two_block_query/display/2
execute if entity @s[tag=wt.pick_block.brush] run function worldtool:ui/select_block/pick_block_message

function #worldtool:hooks/ui/reopen_menu/after_error
