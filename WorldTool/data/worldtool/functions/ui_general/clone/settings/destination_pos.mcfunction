# Called by worldtool:ui_general/clone/menu
# Toggles the clone destination between at the player and at a block

tag @s[tag=wt.clone_at_player] add wt.temp
tag @s[tag=wt.temp] remove wt.clone_at_player
tag @s[tag=!wt.temp] add wt.clone_at_player

tag @s remove wt.temp

function worldtool:ui_general/clone/menu
