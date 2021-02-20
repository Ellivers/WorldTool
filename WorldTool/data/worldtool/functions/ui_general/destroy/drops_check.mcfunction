execute store result score $doTileDrops worldtool run gamerule doTileDrops
execute if score $doTileDrops worldtool matches 0 run function worldtool:ui_general/destroy/gamerule_prompt
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute if score $doTileDrops worldtool matches 1 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run function worldtool:ui_general/destroy/toggle_drops