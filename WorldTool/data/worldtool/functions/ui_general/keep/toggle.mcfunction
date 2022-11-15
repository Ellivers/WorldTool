# Called by worldtool:ui_general/keep/button
# Toggles keeping existing blocks

tag @s[tag=wt.keep] add wt.temp
tag @s[tag=wt.temp] remove wt.keep
tag @s[tag=!wt.temp] add wt.keep

tag @s remove wt.temp

execute if entity @s[tag=wt.menu.general.page1] run function worldtool:ui_general/page1
execute if entity @s[tag=wt.menu.general.page2] run function worldtool:ui_general/page2

function #worldtool:hooks/ui_general/toggle_keep
