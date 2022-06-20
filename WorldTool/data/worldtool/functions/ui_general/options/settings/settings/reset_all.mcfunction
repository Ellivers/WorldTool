# Called by worldtool:ui_general/options/settings/menu
# Resets all settings to default values

scoreboard players set $forceLoadPositions worldtool 1
scoreboard players set $progressBar worldtool 1
scoreboard players set $clearChat worldtool 1
scoreboard players set $playUISounds worldtool 1
scoreboard players set $reloadMessage worldtool 0
scoreboard players set $enableBackups worldtool 0
scoreboard players set $sizeWarnLimit worldtool 100000
scoreboard players set $logLimit worldtool 100
scoreboard players set $maxBackups worldtool 6

function worldtool:ui_general/options/settings/menu
