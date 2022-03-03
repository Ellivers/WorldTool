# Called by various functions
# Re-opens the current menu (after starting a process)

execute if entity @s[tag=wt.menu.general.p1] run function worldtool:ui_general/page1
execute unless entity @s[tag=wt.menu.general.p1] run function worldtool:ui_general/page1

function #worldtool:addon/ui/retry_menu
