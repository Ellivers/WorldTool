execute store result score @s rotX run data get entity @s Pos[0]
execute store result score @s rotY run data get entity @s Pos[1]
execute store result score @s rotZ run data get entity @s Pos[2]

scoreboard players operation @s wt_differenceX = @s pos1x
scoreboard players operation @s wt_differenceY = @s pos1y
scoreboard players operation @s wt_differenceZ = @s pos1z

scoreboard players operation @s wt_differenceX -= @s pos2x
scoreboard players operation @s wt_differenceY -= @s pos2y
scoreboard players operation @s wt_differenceZ -= @s pos2z


scoreboard players operation @s wt_temp_diffX = @s wt_differenceX
scoreboard players operation @s wt_temp_diffY = @s wt_differenceY
scoreboard players operation @s wt_temp_diffZ = @s wt_differenceZ

#execute unless entity @s[tag=!x_-90,tag=!x_90] run scoreboard players operation @s wt_differenceZ = @s wt_temp_diffY
#execute unless entity @s[tag=!x_-90,tag=!x_90] run scoreboard players operation @s wt_differenceY = @s wt_temp_diffZ

scoreboard players operation @s rotX -= @s wt_differenceX
scoreboard players operation @s rotY -= @s wt_differenceY
scoreboard players operation @s rotZ -= @s wt_differenceZ

scoreboard players operation @s wt_temp_prevposX = @s rotX
scoreboard players operation @s wt_temp_prevposY = @s rotY
scoreboard players operation @s wt_temp_prevposZ = @s rotZ

#execute if entity @s[tag=mirrorX] run function worldtool:particles/clone_preview/position/rotate/negate_x
#execute if entity @s[tag=mirrorY] run function worldtool:particles/clone_preview/position/rotate/negate_y
#execute if entity @s[tag=mirrorZ] run function worldtool:particles/clone_preview/position/rotate/negate_z
#
#execute if score @s pos1z > @s pos2z if entity @s[tag=x_-90] run function worldtool:particles/clone_preview/position/rotate/negate_y
#execute if score @s pos2y > @s pos1y if entity @s[tag=x_-90] run function worldtool:particles/clone_preview/position/rotate/negate_z
#
#execute if score @s pos2z > @s pos1z if entity @s[tag=x_90] run function worldtool:particles/clone_preview/position/rotate/negate_y
#execute if score @s pos1y > @s pos2y if entity @s[tag=x_90] run function worldtool:particles/clone_preview/position/rotate/negate_z

#tellraw @a [{"text": "X: "},{"score": {"name": "@s","objective": "wt_differenceX"}},{"text": " Y: "},{"score": {"name": "@s","objective": "wt_differenceY"}},{"text": " Z: "},{"score": {"name": "@s","objective": "wt_differenceZ"}}]

execute store result entity @s Pos[0] double 1 run scoreboard players get @s rotX
execute store result entity @s Pos[1] double 1 run scoreboard players get @s rotY
execute store result entity @s Pos[2] double 1 run scoreboard players get @s rotZ

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