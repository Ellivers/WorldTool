# Called by worldtool:ui/reopen_menu/after_starting
# Displays a small waiting menu while randomization points are being placed

function worldtool:ui/remove_menu_tags
tag @s add wt.menu.randomize.set_source.wait

function worldtool:ui/wait
