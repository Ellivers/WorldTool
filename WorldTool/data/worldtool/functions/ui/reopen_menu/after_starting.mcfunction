# Called by various functions
# Re-opens the current menu (after starting a process)

execute if entity @s[tag=wt.menu.two_block_query.1] run function worldtool:ui/two_block_query/display/1
execute unless entity @s[tag=!wt.menu.general.p1,tag=!wt.menu.replace] run function worldtool:ui_general/page1
execute unless entity @s[tag=!wt.menu.measure.filter,tag=!wt.menu.measure] run function worldtool:ui_general/measure/menu
execute if entity @s[tag=wt.menu.clone] run function worldtool:ui_general/clone/menu
execute if entity @s[tag=wt.menu.randomize] run function worldtool:ui_general/randomize/menu
execute if entity @s[tag=wt.menu.randomize.set_source.confirm] run function worldtool:ui_general/randomize/load

function #worldtool:addon/ui/reopen_menu/after_starting
