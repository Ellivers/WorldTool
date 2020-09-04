function worldtool:ui/brush/give_brush

execute if predicate worldtool:brush/structure_rot/180 run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.StructureRot set value "COUNTERCLOCKWISE_90"
execute if predicate worldtool:brush/structure_rot/90 run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.StructureRot set value "CLOCKWISE_180"
execute if predicate worldtool:brush/structure_rot/-90 run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.StructureRot set value "NONE"
execute if predicate worldtool:brush/structure_rot/-90 run tag @s add anti_toggle_loop
execute if entity @s[predicate=worldtool:brush/structure_rot/none,tag=!anti_toggle_loop] run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.StructureRot set value "CLOCKWISE_90"
tag @s remove anti_toggle_loop

replaceitem entity @s weapon.mainhand minecraft:air

data modify entity @e[type=minecraft:item,sort=nearest,limit=1] PickupDelay set value 0s
function worldtool:ui/brush/select