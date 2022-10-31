# Called by worldtool:ui_general/shatter/menu
# Toggles dropping items from destroyed blocks

tag @s[tag=wt.shatter.drop_items] add wt.temp
tag @s[tag=wt.temp] remove wt.shatter.drop_items
tag @s[tag=!wt.temp] add wt.shatter.drop_items

tag @s remove wt.temp

function worldtool:ui_general/shatter/menu
