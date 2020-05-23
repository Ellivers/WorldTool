loot spawn ~ ~ ~ loot worldtool:brushes/paint
data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{BrushSettings:{BeforeBlock:0b}}}}
replaceitem entity @s weapon.mainhand minecraft:air
function worldtool:ui/brush/select