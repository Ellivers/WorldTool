function worldtool:ui/brush/give_brush

execute if predicate worldtool:brush/structure_mirror/none run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.StructureMirror set value "FRONT_BACK"
execute if predicate worldtool:brush/structure_mirror/none run tag @s add anti_toggle_loop
execute if predicate worldtool:brush/structure_mirror/left_right run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.StructureMirror set value "NONE"
execute if entity @s[predicate=worldtool:brush/structure_mirror/front_back,tag=!anti_toggle_loop] run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.StructureMirror set value "LEFT_RIGHT"
tag @s remove anti_toggle_loop

replaceitem entity @s weapon.mainhand minecraft:air

data modify entity @e[type=minecraft:item,sort=nearest,limit=1] PickupDelay set value 0s
function worldtool:ui/brush/select