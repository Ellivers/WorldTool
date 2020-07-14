execute store result score $doTileDrops worldtool run gamerule doTileDrops
execute if score $doTileDrops worldtool matches 0 run function worldtool:ui/destroy/gamerule_prompt
execute if score $doTileDrops worldtool matches 1 as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/destroy/toggle_drops