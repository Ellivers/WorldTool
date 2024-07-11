# Called by worldtool:technical/uninstall/remove_player_tags and worldtool:ui/settings/settings/keep_menu_options_toggle
# Removes tags that mark that you've visited certain menus

tag @s remove wt.visited_menu.clone
tag @s remove wt.visited_menu.checkered
tag @s remove wt.visited_menu.greenery
tag @s remove wt.visited_menu.shell
tag @s remove wt.visited_menu.repeat
tag @s remove wt.visited_menu.smooth

function #worldtool:hooks/ui_general/remove_visited_tags
