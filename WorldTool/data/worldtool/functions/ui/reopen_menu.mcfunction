# Called by various functions
# Re-opens the current menu (after starting a process)

execute if entity @s[tag=wt.menu.two_block_query.1] run function worldtool:ui/two_block_query/display/1
execute unless entity @s[tag=!wt.menu.general.p1,tag=!wt.menu.two_block_query.2,tag=!wt.menu.two_block_query.3] run function worldtool:ui_general/page1

function #worldtool:addon/ui/reopen_menu
