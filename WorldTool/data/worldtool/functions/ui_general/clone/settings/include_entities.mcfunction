# Called by worldtool:ui_general/clone/menu
# Toggles including entities while cloning the area

tag @s[tag=wt.clone.include_entities] add wt.temp
tag @s[tag=wt.temp] remove wt.clone.include_entities
tag @s[tag=!wt.temp] add wt.clone.include_entities

tag @s remove wt.temp

function worldtool:ui_general/clone/menu
