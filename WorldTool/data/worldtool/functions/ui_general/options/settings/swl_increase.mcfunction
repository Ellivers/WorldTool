scoreboard players add $sizeWarnLimit worldtool 5000
execute if score $sizeWarnLimit worldtool matches 10000001.. run scoreboard players set $sizeWarnLimit worldtool 0
function worldtool:ui_general/options/settings
