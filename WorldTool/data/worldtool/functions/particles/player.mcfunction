# Called by worldtool:particles/display
# Commands for player particle displaying

execute unless entity @s[tag=!wt.menu.clone,tag=!wt.menu.clone.rotate] run function worldtool:particles/clone_preview/load

function #worldtool:addon/particles/player
