scoreboard players operation $blocksplaced worldtool = $widthX worldtool
scoreboard players operation $blocksplaced worldtool *= $heightY worldtool
scoreboard players operation $blocksplaced worldtool *= $lengthZ worldtool

execute if entity @s[tag=!nomeasuredonemessageplzthx] unless score $blocksplaced worldtool matches 0..1 run tellraw @s ["\n\n\n\n\n\n\n\n\nThis area contains ",{"score":{"name":"$blocksplaced","objective":"worldtool"}}," blocks. (",{"score":{"name":"$widthX","objective":"worldtool"}}," X * ",{"score":{"name":"$heightY","objective":"worldtool"}}," Y * ",{"score":{"name":"$lengthZ","objective":"worldtool"}}," Z)"]
execute if entity @s[tag=!nomeasuredonemessageplzthx] if score $blocksplaced worldtool matches 0..1 run tellraw @s "\n\n\n\n\n\n\n\n\nThis area contains 1 block. (1 X * 1 Y * 1 Z)"
execute if entity @s[tag=random_2] run function worldtool:load_random_check.2