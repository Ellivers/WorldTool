# Called by worldtool:ray/raycast_done
# All different brush states

# Makes some stuff unstuck
execute as @e[type=minecraft:area_effect_cloud,tag=wt_drawer,tag=brushing] at @s run function worldtool:load_function/load2_fill.tags

execute unless entity @s[predicate=!worldtool:brushes/color,predicate=!worldtool:brushes/place,predicate=!worldtool:brushes/paint,predicate=!worldtool:brushes/replace,predicate=!worldtool:brushes/structure] if entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] run tellraw @s {"text": "Another process is currently running","color":"red"}

#The different brushes, including picking (grabing) a block
execute unless entity @s[predicate=!worldtool:brushes/place,predicate=!worldtool:brushes/paint] unless entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] run function worldtool:brush/brushes/paint/main
execute if entity @s[predicate=worldtool:brushes/color] unless entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] run function worldtool:brush/brushes/color/load
execute if entity @s[predicate=worldtool:brushes/replace] unless entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] run function worldtool:brush/brushes/replace/load
execute if entity @s[predicate=worldtool:brushes/structure] unless entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] run function worldtool:brush/brushes/structure/structure

execute if entity @s[predicate=worldtool:brushes/sphere] run function worldtool:brush/brushes/sphere/load
execute if entity @s[predicate=worldtool:brushes/circle] run function worldtool:brush/brushes/circle/load

#execute if entity @s[tag=grabbing_block] run function worldtool:brush/grab_block

function #worldtool:brush_use/hit_block