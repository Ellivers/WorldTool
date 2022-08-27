# Called by worldtool:ui/return.back
# Cancels the selection of the replace brush when selecting it for the first time

tag @s remove wt.brush.first_replace
item modify entity @s weapon.mainhand worldtool:brush_tool/brushes/paint
function worldtool:ui/sound.change_item

function worldtool:ui_brush/select_brush/menu
