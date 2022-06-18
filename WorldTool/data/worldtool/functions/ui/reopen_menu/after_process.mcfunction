# Called by worldtool:process_end/message
# Re-opens the current menu (after a process has been completed)

execute if entity @s[tag=wt.menu.randomize.set_source.wait] run function worldtool:ui_general/randomize/set_source/complete

function #worldtool:addon/ui/reopen_menu/after_process
