#The different brushes, including picking (grabing) a block
execute if entity @s[tag=!grabbing_block] unless entity @s[predicate=!worldtool:brushes/place,predicate=!worldtool:brushes/paint] unless entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] run function worldtool:brush/brushes/paint/main
execute if entity @s[predicate=worldtool:brushes/color,tag=!grabbing_block] unless entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] run function worldtool:brush/brushes/color/load
execute if entity @s[predicate=worldtool:brushes/replace,tag=!grabbing_block] unless entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] run function worldtool:brush/brushes/replace/load

execute if entity @s[predicate=worldtool:brushes/sphere,tag=!grabbing_block] run function worldtool:brush/brushes/sphere/load
execute if entity @s[predicate=worldtool:brushes/circle,tag=!grabbing_block] run function worldtool:brush/brushes/circle/load

execute if entity @s[tag=grabbing_block] run function worldtool:brush/grab_block