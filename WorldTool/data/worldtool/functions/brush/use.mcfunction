# Called by worldtool:ray/raycast_done
# All different brush states

# Makes some stuff unstuck
execute if score $brushFunctionRunning worldtool matches 1 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer,tag=brushing] at @s run function worldtool:load_process/load2_fill.tags

execute unless entity @s[predicate=!worldtool:brushes/color,predicate=!worldtool:brushes/place,predicate=!worldtool:brushes/paint,predicate=!worldtool:brushes/replace,predicate=!worldtool:brushes/structure] if score $functionRunning worldtool matches 1 run tellraw @s {"text": "Another process is currently running","color":"red"}

#The different brushes, including picking (grabing) a block
execute unless entity @s[predicate=!worldtool:brushes/place,predicate=!worldtool:brushes/paint] unless score $functionRunning worldtool matches 1 run function worldtool:brush/brushes/main/main
execute if entity @s[predicate=worldtool:brushes/color] unless score $functionRunning worldtool matches 1 run function worldtool:brush/brushes/color/load
execute if entity @s[predicate=worldtool:brushes/replace] unless score $functionRunning worldtool matches 1 run function worldtool:brush/brushes/replace/load
execute if entity @s[predicate=worldtool:brushes/structure] unless score $functionRunning worldtool matches 1 run function worldtool:brush/brushes/structure/structure

execute if entity @s[predicate=worldtool:brushes/sphere] run function worldtool:brush/brushes/sphere/load
execute if entity @s[predicate=worldtool:brushes/circle] run function worldtool:brush/brushes/circle/load

#execute if entity @s[tag=grabbing_block] run function worldtool:brush/grab_block

function #worldtool:brush_use/hit_block