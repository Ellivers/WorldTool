execute if score @s wt_pos1x >= @s wt_pos2x if score @s wt_rotX >= @s wt_pos2x if score @s wt_rotX <= @s wt_pos1x run tag @s add wt_overlappingX
execute if score @s wt_pos1y >= @s wt_pos2y if score @s wt_rotY >= @s wt_pos2y if score @s wt_rotY <= @s wt_pos1y run tag @s add wt_overlappingY
execute if score @s wt_pos1z >= @s wt_pos2z if score @s wt_rotZ >= @s wt_pos2z if score @s wt_rotZ <= @s wt_pos1z run tag @s add wt_overlappingZ

execute if score @s wt_pos1x < @s wt_pos2x if score @s wt_rotX <= @s wt_pos2x if score @s wt_rotX >= @s wt_pos1x run tag @s add wt_overlappingX
execute if score @s wt_pos1y < @s wt_pos2y if score @s wt_rotY <= @s wt_pos2y if score @s wt_rotY >= @s wt_pos1y run tag @s add wt_overlappingY
execute if score @s wt_pos1z < @s wt_pos2z if score @s wt_rotZ <= @s wt_pos2z if score @s wt_rotZ >= @s wt_pos1z run tag @s add wt_overlappingZ