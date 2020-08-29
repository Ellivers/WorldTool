execute if score @s pos1x >= @s pos2x if score @s rotX >= @s pos2x if score @s rotX <= @s pos1x run tag @s add wt_overlappingX
execute if score @s pos1y >= @s pos2y if score @s rotY >= @s pos2y if score @s rotY <= @s pos1y run tag @s add wt_overlappingY
execute if score @s pos1z >= @s pos2z if score @s rotZ >= @s pos2z if score @s rotZ <= @s pos1z run tag @s add wt_overlappingZ

execute if score @s pos1x < @s pos2x if score @s rotX <= @s pos2x if score @s rotX >= @s pos1x run tag @s add wt_overlappingX
execute if score @s pos1y < @s pos2y if score @s rotY <= @s pos2y if score @s rotY >= @s pos1y run tag @s add wt_overlappingY
execute if score @s pos1z < @s pos2z if score @s rotZ <= @s pos2z if score @s rotZ >= @s pos1z run tag @s add wt_overlappingZ