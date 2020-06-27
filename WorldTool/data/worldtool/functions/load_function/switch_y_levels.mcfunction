scoreboard players operation $pos1y worldtool = $pos2y worldtool
scoreboard players operation $pos2y worldtool = $drawingposY worldtool
scoreboard players operation $drawingposY worldtool = $pos1y worldtool
execute as @e[type=minecraft:area_effect_cloud,tag=wt_drawer,sort=nearest,limit=1] store result entity @s Pos[1] double 1 run scoreboard players get $pos1y worldtool
execute store result score #cloneposPosY worldtool run data get entity @e[type=minecraft:area_effect_cloud,tag=clonepos,sort=nearest,limit=1] Pos[1]
scoreboard players operation #differenceY worldtool = $pos2y worldtool
scoreboard players operation #differenceY worldtool -= $pos1y worldtool
scoreboard players operation #cloneposPosY worldtool -= #differenceY worldtool
execute store result entity @e[type=minecraft:area_effect_cloud,tag=clonepos,sort=nearest,limit=1] Pos[1] double 1 run scoreboard players get #cloneposPosY worldtool