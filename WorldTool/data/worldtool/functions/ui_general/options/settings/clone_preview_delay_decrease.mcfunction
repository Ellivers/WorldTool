execute unless score $clonePreviewDelay worldtool matches ..3 run scoreboard players remove $clonePreviewDelay worldtool 1
execute if score $clonePreviewDelay worldtool matches ..3 run scoreboard players set $clonePreviewDelay worldtool 20
function worldtool:ui_general/options/settings