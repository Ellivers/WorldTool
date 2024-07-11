# Called by worldtool:technical/load
# Re-opens the current menu (after the data pack has been reloaded)

execute unless entity @s[tag=!wt.menu.options,tag=!wt.menu.paste_area,tag=!wt.menu.select_paste_pos] run function worldtool:ui_general/options/menu
execute if entity @s[tag=wt.menu.shapes.options] run function worldtool:ui_shapes/options/menu

function #worldtool:hooks/ui/reopen_menu/after_reload
