# Called by worldtool:ui_brush/select_brush/select
# Selects the paint brush

item modify entity @s weapon.mainhand worldtool:brush_tool/brushes/paint

execute if score $playUISounds worldtool matches 1.. at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5

function worldtool:ui_brush/main
