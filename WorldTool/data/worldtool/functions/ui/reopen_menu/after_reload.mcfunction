# Called by worldtool:technical/load
# Re-opens the current menu (after the data pack has been reloaded)

execute unless entity @s[tag=!wt.menu.options,tag=!wt.menu.paste_area,tag=!wt.menu.select_paste_pos] run function worldtool:ui_general/options/menu

function #worldtool:hooks/ui/reopen_menu/after_reload
