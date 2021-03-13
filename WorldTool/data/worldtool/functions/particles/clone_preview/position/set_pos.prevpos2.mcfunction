execute store result score @s wt_rotX run data get entity @s Pos[0]
execute store result score @s wt_rotY run data get entity @s Pos[1]
execute store result score @s wt_rotZ run data get entity @s Pos[2]

scoreboard players operation @s wt_differenceX = $pos1xt worldtool
scoreboard players operation @s wt_differenceY = $pos1yt worldtool
scoreboard players operation @s wt_differenceZ = $pos1zt worldtool

scoreboard players operation @s wt_differenceX -= $pos2xt worldtool
scoreboard players operation @s wt_differenceY -= $pos2yt worldtool
scoreboard players operation @s wt_differenceZ -= $pos2zt worldtool


scoreboard players operation @s wt_temp_diffX = @s wt_differenceX
scoreboard players operation @s wt_temp_diffY = @s wt_differenceY
scoreboard players operation @s wt_temp_diffZ = @s wt_differenceZ

execute unless entity @s[tag=!x_-90,tag=!x_90] run scoreboard players operation @s wt_differenceZ = @s wt_temp_diffY
execute unless entity @s[tag=!x_-90,tag=!x_90] run scoreboard players operation @s wt_differenceY = @s wt_temp_diffZ

execute unless entity @s[tag=!y_-90,tag=!y_90] run scoreboard players operation @s wt_differenceX = @s wt_temp_diffZ
execute unless entity @s[tag=!y_-90,tag=!y_90] run scoreboard players operation @s wt_differenceZ = @s wt_temp_diffX

execute unless entity @s[tag=!z_-90,tag=!z_90] run scoreboard players operation @s wt_differenceX = @s wt_temp_diffY
execute unless entity @s[tag=!z_-90,tag=!z_90] run scoreboard players operation @s wt_differenceY = @s wt_temp_diffX

scoreboard players operation @s wt_rotX -= @s wt_differenceX
scoreboard players operation @s wt_rotY -= @s wt_differenceY
scoreboard players operation @s wt_rotZ -= @s wt_differenceZ

scoreboard players operation @s wt_temp_prevposX = @s wt_rotX
scoreboard players operation @s wt_temp_prevposY = @s wt_rotY
scoreboard players operation @s wt_temp_prevposZ = @s wt_rotZ

execute unless entity @s[tag=!mirrorX, tag=!y_90,tag=!y_180, tag=!z_-90,tag=!z_180] run function worldtool:particles/clone_preview/position/rotate/negate_x
execute unless entity @s[tag=!mirrorY, tag=!x_90,tag=!x_180, tag=!z_90,tag=!z_180] run function worldtool:particles/clone_preview/position/rotate/negate_y
execute unless entity @s[tag=!mirrorZ, tag=!x_-90,tag=!x_180, tag=!y_-90,tag=!y_180] run function worldtool:particles/clone_preview/position/rotate/negate_z

#tellraw @a [{"text": "X: "},{"score": {"name": "@s","objective": "wt_differenceX"}},{"text": " Y: "},{"score": {"name": "@s","objective": "wt_differenceY"}},{"text": " Z: "},{"score": {"name": "@s","objective": "wt_differenceZ"}}]

execute store result entity @s Pos[0] double 1 run scoreboard players get @s wt_rotX
execute store result entity @s Pos[1] double 1 run scoreboard players get @s wt_rotY
execute store result entity @s Pos[2] double 1 run scoreboard players get @s wt_rotZ

#tag @s remove mirrorX
#tag @s remove mirrorY
#tag @s remove mirrorZ
#tag @s remove x_-90
#tag @s remove y_-90
#tag @s remove z_-90
#tag @s remove x_180
#tag @s remove y_180
#tag @s remove z_180
#tag @s remove x_90
#tag @s remove y_90
#tag @s remove z_90