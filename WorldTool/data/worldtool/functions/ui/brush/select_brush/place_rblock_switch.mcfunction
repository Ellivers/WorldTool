#Toggle the replace existing blocks option with the place brush
execute if entity @s[predicate=!worldtool:brush/overwrite_blocks] run tag @s add settingrblock
execute if predicate worldtool:brushes/place run loot spawn ~ ~ ~ loot worldtool:brushes/place
execute if predicate worldtool:brushes/flat_place run loot spawn ~ ~ ~ loot worldtool:brushes/flat_place
replaceitem entity @s weapon.mainhand minecraft:air
execute if entity @s[tag=settingrblock] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{BrushSettings:{PlaceReplaceBlocks:1b}}}}
execute if entity @s[tag=!settingrblock] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{BrushSettings:{PlaceReplaceBlocks:0b}}}}
tag @s remove settingrblock
execute as @p run function worldtool:ui/brush/select