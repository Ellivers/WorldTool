tag @s add wt_struct_corn1
tag @s remove outl_nX
tag @s remove outl_pX
tag @s remove outl_nY
tag @s remove outl_pY
tag @s remove outl_nZ
tag @s remove outl_pZ
execute store result score @s wt_pos1x run data get entity @s Pos[0]
execute store result score @s wt_pos1y run data get entity @s Pos[1]
execute store result score @s wt_pos1z run data get entity @s Pos[2]
execute store result score @s wt_pos2x run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_struct_corn2,limit=1] Pos[0]
execute store result score @s wt_pos2y run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_struct_corn2,limit=1] Pos[1]
execute store result score @s wt_pos2z run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_struct_corn2,limit=1] Pos[2]

# "outl_nx" stands for "outline_negative_x"
execute if score @s wt_pos1x > @s wt_pos2x run tag @s add outl_nX
execute if score @s wt_pos1x < @s wt_pos2x run tag @s add outl_pX
execute if score @s wt_pos1y > @s wt_pos2y run tag @s add outl_nY
execute if score @s wt_pos1y < @s wt_pos2y run tag @s add outl_pY
execute if score @s wt_pos1z > @s wt_pos2z run tag @s add outl_nZ
execute if score @s wt_pos1z < @s wt_pos2z run tag @s add outl_pZ

execute if score @s wt_pos1x = @s wt_pos2x run tag @s add outl_pX
execute if score @s wt_pos1y = @s wt_pos2y run tag @s add outl_pY
execute if score @s wt_pos1z = @s wt_pos2z run tag @s add outl_pZ


execute if entity @s[tag=outl_pX,tag=outl_pY,tag=outl_pZ] run setblock ~-1 ~-1 ~-1 minecraft:structure_block{mode:"CORNER"}
execute if entity @s[tag=outl_nX,tag=outl_nY,tag=outl_nZ] run setblock ~1 ~1 ~1 minecraft:structure_block{mode:"CORNER"}

execute if entity @s[tag=outl_nX,tag=outl_pY,tag=outl_pZ] run setblock ~1 ~-1 ~-1 minecraft:structure_block{mode:"CORNER"}
execute if entity @s[tag=outl_nX,tag=outl_nY,tag=outl_pZ] run setblock ~1 ~1 ~-1 minecraft:structure_block{mode:"CORNER"}
execute if entity @s[tag=outl_pX,tag=outl_pY,tag=outl_nZ] run setblock ~-1 ~-1 ~1 minecraft:structure_block{mode:"CORNER"}
execute if entity @s[tag=outl_pX,tag=outl_nY,tag=outl_nZ] run setblock ~-1 ~1 ~1 minecraft:structure_block{mode:"CORNER"}

execute if entity @s[tag=outl_pX,tag=outl_nY,tag=outl_pZ] run setblock ~-1 ~1 ~-1 minecraft:structure_block{mode:"CORNER"}
execute if entity @s[tag=outl_nX,tag=outl_pY,tag=outl_nZ] run setblock ~1 ~-1 ~1 minecraft:structure_block{mode:"CORNER"}