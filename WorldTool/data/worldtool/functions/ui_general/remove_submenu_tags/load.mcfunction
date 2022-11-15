# Called by worldtool:ui_general/page1 and worldtool:ui/close
# Removes tags specific to submenus of the General Tool

function worldtool:ui_general/remove_submenu_tags/mandatory
execute if score $keepMenuOptions worldtool matches 0 run function worldtool:ui_general/remove_submenu_tags/other
