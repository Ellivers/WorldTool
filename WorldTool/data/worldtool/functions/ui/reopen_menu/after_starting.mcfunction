# Called by various functions
# Re-opens the current menu (after starting a process)

execute if entity @s[tag=wt.menu.two_block_query.1] run function worldtool:ui_general/two_block_query/display/1
execute unless entity @s[tag=!wt.menu.general.page1,tag=!wt.menu.replace] run function worldtool:ui_general/page1
execute unless entity @s[tag=!wt.menu.measure.filter,tag=!wt.menu.measure] run function worldtool:ui_general/measure/menu
execute if entity @s[tag=wt.menu.clone] run function worldtool:ui_general/clone/menu
execute if entity @s[tag=wt.menu.randomize] run function worldtool:ui_general/randomize/menu
execute if entity @s[tag=wt.menu.randomize.set_source.confirm] run function worldtool:ui_general/randomize/set_source/wait
execute if entity @s[tag=wt.menu.copy_area] run function worldtool:ui/wait
execute if entity @s[tag=wt.menu.checkered] run function worldtool:ui_general/checkered/menu

function #worldtool:addon/ui/reopen_menu/after_starting
