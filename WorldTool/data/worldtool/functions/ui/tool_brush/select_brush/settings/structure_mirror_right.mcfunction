function worldtool:ui/tool_brush/give_brush

execute if predicate worldtool:brush/structure_mirror/front_back run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.StructureMirror set value "NONE"
execute if predicate worldtool:brush/structure_mirror/front_back run tag @s add anti_toggle_loop
execute if predicate worldtool:brush/structure_mirror/left_right run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.StructureMirror set value "FRONT_BACK"
execute if entity @s[predicate=worldtool:brush/structure_mirror/none,tag=!anti_toggle_loop] run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.StructureMirror set value "LEFT_RIGHT"
tag @s remove anti_toggle_loop

item replace entity @s weapon.mainhand with minecraft:air

data modify entity @e[type=minecraft:item,sort=nearest,limit=1] PickupDelay set value 0s
function worldtool:ui/tool_brush/select