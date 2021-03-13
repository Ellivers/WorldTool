# Copy the rotation to this entity
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @a if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:load_process/clone/set_temp_score
execute at @a[tag=mirrorX] if score #ID_temp worldtool = @p wt_ID run tag @s add mirrorX
execute at @a[tag=mirrorY] if score #ID_temp worldtool = @p wt_ID run tag @s add mirrorY
execute at @a[tag=mirrorZ] if score #ID_temp worldtool = @p wt_ID run tag @s add mirrorZ
execute unless score $temp wt_rotX matches 0 run scoreboard players operation @s wt_rotX = $temp wt_rotX
execute unless score $temp wt_rotY matches 0 run scoreboard players operation @s wt_rotY = $temp wt_rotY
execute unless score $temp wt_rotZ matches 0 run scoreboard players operation @s wt_rotZ = $temp wt_rotZ

# Move the y position of the copier and drawer if the first position is higher up than the second position
# This is to attempt not breaking redstone and other blocks that need to be placed on top of solid blocks.
execute if entity @s[tag=!mirrorY] unless score @s wt_rotX matches -90.. unless score @s wt_rotZ matches -90.. if score $pos1y worldtool > $pos2y worldtool run function worldtool:load_process/switch_y_levels2

tag @s remove wt_setting_clone
#execute if entity @s[tag=!rotated] run function worldtool:processes/clone/clone
#execute if entity @s[tag=rotated] run function worldtool:processes/clone/rotated
