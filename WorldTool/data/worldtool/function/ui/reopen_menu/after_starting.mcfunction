# Called by various functions
# Re-opens the current menu (after starting a process)

execute if entity @s[tag=wt.menu.two_block_query.1] run function worldtool:ui_general/two_block_query/display/1
execute unless entity @s[tag=!wt.menu.general.page1,tag=!wt.menu.replace] run function worldtool:ui_general/page1
execute if entity @s[tag=wt.menu.general.page2] run function worldtool:ui_general/page2
execute if entity @s[tag=wt.menu.general.plugins] run function worldtool:ui_general/plugin_page
execute unless entity @s[tag=!wt.menu.measure.filter,tag=!wt.menu.measure] run function worldtool:ui_general/measure/menu
execute if entity @s[tag=wt.menu.options] run function worldtool:ui_general/options/menu
execute if entity @s[tag=wt.menu.paste_area] run function worldtool:ui_general/options/paste/menu
execute if entity @s[tag=wt.menu.clone] run function worldtool:ui_general/clone/menu
execute if entity @s[tag=wt.menu.randomize] run function worldtool:ui_general/randomize/menu
execute if entity @s[tag=wt.menu.randomize.set_source.confirm] run function worldtool:ui_general/randomize/set_source/wait
execute if entity @s[tag=wt.menu.copy_area] run function worldtool:ui/wait
execute if entity @s[tag=wt.menu.checkered] run function worldtool:ui_general/checkered/menu
execute if entity @s[tag=wt.menu.shell] run function worldtool:ui_general/shell/menu
execute if entity @s[tag=wt.menu.outline] run function worldtool:ui_general/outline/menu
execute if entity @s[tag=wt.menu.greenery] run function worldtool:ui_general/greenery/menu
execute if entity @s[tag=wt.menu.shatter] run function worldtool:ui_general/shatter/menu
execute if entity @s[tag=wt.menu.shatter.replace] run function worldtool:ui_general/shatter/menu
execute if entity @s[tag=wt.menu.repeat] run function worldtool:ui_general/repeat/menu
execute if entity @s[tag=wt.menu.smooth] run function worldtool:ui_general/smooth/menu
execute if entity @s[tag=wt.menu.shapes] run function worldtool:ui_shapes/menu
execute if entity @s[tag=wt.menu.shapes.options] run function worldtool:ui_shapes/options/menu

function #worldtool:hooks/ui/reopen_menu/after_starting
