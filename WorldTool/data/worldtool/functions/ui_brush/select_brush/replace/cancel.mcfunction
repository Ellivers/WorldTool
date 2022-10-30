# Called by worldtool:ui/return.back
# Cancels the selection of the replace brush when selecting it for the first time

tag @s remove wt.brush.first_replace
function worldtool:ui_brush/select_brush/menu
