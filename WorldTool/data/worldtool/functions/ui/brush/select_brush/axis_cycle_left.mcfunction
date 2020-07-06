execute if predicate worldtool:brushes/circle run loot spawn ~ ~ ~ loot worldtool:brushes/circle
execute if predicate worldtool:brushes/flat_paint run loot spawn ~ ~ ~ loot worldtool:brushes/flat_paint
execute if predicate worldtool:brushes/flat_place run loot spawn ~ ~ ~ loot worldtool:brushes/flat_place

execute if predicate worldtool:brush/axis/x run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.Axis set value "Auto"
execute if predicate worldtool:brush/axis/x run tag @s add anti_toggle_loop
execute if predicate worldtool:brush/axis/y run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.Axis set value "X"
execute if predicate worldtool:brush/axis/z run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.Axis set value "Y"
execute if entity @s[predicate=worldtool:brush/axis/auto,tag=!anti_toggle_loop] run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.Axis set value "Z"
tag @s remove anti_toggle_loop

replaceitem entity @s weapon.mainhand minecraft:air

data modify entity @e[type=minecraft:item,sort=nearest,limit=1] PickupDelay set value 0s
function worldtool:ui/brush/select