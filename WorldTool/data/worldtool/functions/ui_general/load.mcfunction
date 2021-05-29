# Called by worldtool:ui_general/click/options and worldtool:ui_general/click/options_use
# Checks that everything is OK, then opens the general tool menu

function worldtool:process_start/common/check_positions

execute if score #success worldtool matches 1 run function worldtool:ui_general/page1
