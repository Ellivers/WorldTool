# Called by various functions
# Re-opens the current menu (going back from a submenu)

execute if entity @s[tag=wt.menu.general.page1] run function worldtool:ui_general/load
execute if entity @s[tag=wt.menu.two_block_query.2] run function worldtool:ui_general/two_block_query/display/2
execute if entity @s[tag=wt.menu.two_block_query.3] run function worldtool:ui_general/two_block_query/display/3
execute if entity @s[tag=wt.menu.clone] run function worldtool:ui_general/clone/menu
execute if entity @s[tag=wt.menu.paste_area] run function worldtool:ui_general/options/paste/menu
execute if entity @s[tag=wt.menu.options] run function worldtool:ui_general/options/menu
execute if entity @s[tag=wt.menu.checkered] run function worldtool:ui_general/checkered/menu
execute if entity @s[tag=wt.menu.shapes.options] run function worldtool:ui_shapes/options/menu
execute if entity @s[tag=wt.menu.shatter] run function worldtool:ui_general/shatter/menu
execute if entity @s[tag=wt.menu.randomize.set_source.pos1] run function worldtool:ui_general/randomize/menu
execute if entity @s[tag=wt.menu.select_paste_pos] run function worldtool:ui_general/options/paste/menu

function #worldtool:hooks/ui/reopen_menu/from_submenu
