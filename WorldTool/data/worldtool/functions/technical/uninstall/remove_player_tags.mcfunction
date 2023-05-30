# Called by worldtool:technical/uninstall
# Removes all player tags

function worldtool:ui/remove_menu_tags
function worldtool:ui/remove_return_tags
function worldtool:ui_general/remove_submenu_tags/mandatory
function worldtool:ui_general/remove_submenu_tags/other

tag @s remove wt.user
tag @s remove wt.helper_particles
tag @s remove wt.opened_tool

function #worldtool:hooks/remove_player_tags
