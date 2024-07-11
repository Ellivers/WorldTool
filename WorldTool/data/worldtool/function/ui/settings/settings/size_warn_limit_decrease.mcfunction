# Called by worldtool:ui/settings/menu
# Decreases a setting

scoreboard players remove $sizeWarnLimit worldtool 10000
execute if score $sizeWarnLimit worldtool matches ..-1 run scoreboard players set $sizeWarnLimit worldtool 0

function worldtool:ui/settings/menu
