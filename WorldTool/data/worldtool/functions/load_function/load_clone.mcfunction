# Copy the rotation to this entity
execute at @a if score @s wt_ID = @p wt_ID as @p run function worldtool:load_function/load_clone.settempscore
execute at @a[tag=mirrorX] if score @s wt_ID = @p wt_ID run tag @s add mirrorX
execute at @a[tag=mirrorY] if score @s wt_ID = @p wt_ID run tag @s add mirrorY
execute at @a[tag=mirrorZ] if score @s wt_ID = @p wt_ID run tag @s add mirrorZ
scoreboard players operation @s rotX = $temp rotX
scoreboard players operation @s rotY = $temp rotY
scoreboard players operation @s rotZ = $temp rotZ

# Move the y position of the copyer and drawer if the first position is higher up than the second position
# This is to attempt not breaking redstone and other blocks that need to be placed on top of solid blocks.
execute if entity @s[tag=!mirrorY] unless score @s rotX matches -90.. unless score @s rotZ matches -90.. if score $pos1y worldtool > $pos2y worldtool run function worldtool:load_function/switch_y_levels2

#execute if entity @s[tag=moveclone] unless entity @s[tag=!filtered,tag=!filtered_reversed] at @s run clone 2 1 13 2 1 13 0 1 13
# Start
execute if entity @s[tag=!rotated] run function worldtool:clone/clone
execute if entity @s[tag=rotated] run function worldtool:clone/rotated