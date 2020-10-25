tag @s add wt_struct_corn
tag @s remove outl_nX
tag @s remove outl_pX
tag @s remove outl_nY
tag @s remove outl_pY
tag @s remove outl_nZ
tag @s remove outl_pZ
execute store result score @s pos1x run data get entity @s Pos[0]
execute store result score @s pos1y run data get entity @s Pos[1]
execute store result score @s pos1z run data get entity @s Pos[2]
execute store result score @s pos2x run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2,tag=wt_struct_corn,limit=1] Pos[0]
execute store result score @s pos2y run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2,tag=wt_struct_corn,limit=1] Pos[1]
execute store result score @s pos2z run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2,tag=wt_struct_corn,limit=1] Pos[2]

# "outl_nx" stands for "outline_negative_x"
execute if score @s pos1x > @s pos2x run tag @s add outl_nX
execute if score @s pos1x < @s pos2x run tag @s add outl_pX
execute if score @s pos1y > @s pos2y run tag @s add outl_nY
execute if score @s pos1y < @s pos2y run tag @s add outl_pY
execute if score @s pos1z > @s pos2z run tag @s add outl_nZ
execute if score @s pos1z < @s pos2z run tag @s add outl_pZ

execute if score @s pos1x = @s pos2x run tag @s add outl_pX
execute if score @s pos1y = @s pos2y run tag @s add outl_pY
execute if score @s pos1z = @s pos2z run tag @s add outl_pZ


execute if entity @s[tag=outl_pX,tag=outl_pY,tag=outl_pZ] run setblock ~-1 ~-1 ~-1 minecraft:structure_block{mode:"CORNER"}
execute if entity @s[tag=outl_nX,tag=outl_nY,tag=outl_nZ] run setblock ~1 ~1 ~1 minecraft:structure_block{mode:"CORNER"}

execute if entity @s[tag=outl_nX,tag=outl_pY,tag=outl_pZ] run setblock ~1 ~-1 ~-1 minecraft:structure_block{mode:"CORNER"}
execute if entity @s[tag=outl_nX,tag=outl_nY,tag=outl_pZ] run setblock ~1 ~1 ~-1 minecraft:structure_block{mode:"CORNER"}
execute if entity @s[tag=outl_pX,tag=outl_pY,tag=outl_nZ] run setblock ~-1 ~-1 ~1 minecraft:structure_block{mode:"CORNER"}
execute if entity @s[tag=outl_pX,tag=outl_nY,tag=outl_nZ] run setblock ~-1 ~1 ~1 minecraft:structure_block{mode:"CORNER"}

execute if entity @s[tag=outl_pX,tag=outl_nY,tag=outl_pZ] run setblock ~-1 ~1 ~-1 minecraft:structure_block{mode:"CORNER"}
execute if entity @s[tag=outl_nX,tag=outl_pY,tag=outl_nZ] run setblock ~1 ~-1 ~1 minecraft:structure_block{mode:"CORNER"}