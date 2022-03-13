# Called by various functions
# Re-opens the current menu (going back from a submenu)

execute if entity @s[tag=wt.menu.general.p1] run function worldtool:ui_general/load
execute if entity @s[tag=wt.menu.two_block_query.2] run function worldtool:ui/two_block_query/display/2
execute if entity @s[tag=wt.menu.two_block_query.3] run function worldtool:ui/two_block_query/display/3
function #worldtool:addon/ui/reopen_menu/after_starting/from_submenu
