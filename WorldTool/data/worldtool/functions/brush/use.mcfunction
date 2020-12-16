# Called by worldtool:ray/raycast_done
# All different brush states

# Makes some stuff unstuck
#execute if score $brushFunctionRunning worldtool matches 1 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer,tag=brushing] at @s run function worldtool:load_process/load2_fill.tags

execute if entity @s[predicate=!worldtool:brushes/circle,predicate=!worldtool:brushes/sphere,predicate=!worldtool:brushes/structure] if score $functionRunning worldtool matches 1 run tellraw @s {"text": "Another process is currently running","color":"red"}

#The different brushes, including picking (grabing) a block
execute unless entity @s[predicate=!worldtool:brushes/place,predicate=!worldtool:brushes/paint] unless score $functionRunning worldtool matches 1 run function worldtool:brush/use.check
execute if entity @s[predicate=worldtool:brushes/color] unless score $functionRunning worldtool matches 1 run function worldtool:brush/brushes/color/load
execute if entity @s[predicate=worldtool:brushes/replace] unless score $functionRunning worldtool matches 1 run function worldtool:brush/brushes/replace/loadcheck
execute if entity @s[predicate=worldtool:brushes/structure] unless score $functionRunning worldtool matches 1 run function worldtool:brush/brushes/structure/load

execute if entity @s[predicate=worldtool:brushes/sphere] run function worldtool:brush/brushes/sphere/loadcheck
execute if entity @s[predicate=worldtool:brushes/circle] run function worldtool:brush/brushes/circle/loadcheck

function #worldtool:brush/hit_block
