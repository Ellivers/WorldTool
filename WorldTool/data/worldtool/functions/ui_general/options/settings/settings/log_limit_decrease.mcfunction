# Called by worldtool:ui_general/options/settings/menu
# Decreases a setting

scoreboard players remove $logLimit worldtool 50
execute if score $logLimit worldtool matches ..-1 run scoreboard players set $logLimit worldtool 0

function worldtool:ui_general/options/settings/menu
