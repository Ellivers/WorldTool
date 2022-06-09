# Called by worldtool:ui/return

tag @s add wt.menu.randomize.replace
tag @s[tag=wt.two_block_query.normal] add wt.menu.randomize.replace.normal
tag @s[tag=wt.two_block_query.exclude] add wt.menu.randomize.replace.exclude

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

function worldtool:ui_general/randomize/menu
