loot spawn ~ ~ ~ loot worldtool:brushes/replace
data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{BrushSettings:{BeforeBlock:0b}}}}
execute if entity @s[tag=replacebrush_reversed] run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.display.Lore[6] set value '{"text":"Not replacing block:","color":"white","italic":false}'
replaceitem entity @s weapon.mainhand minecraft:air
function worldtool:ui/brush/select