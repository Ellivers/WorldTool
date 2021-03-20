execute if entity @s[tag=!nomeasuredonemessageplzthx] run function worldtool:ui_general/clear_chat

# Caculations
scoreboard players operation $blocksplaced worldtool = $widthX worldtool
scoreboard players operation $blocksplaced worldtool *= $heightY worldtool
scoreboard players operation $blocksplaced worldtool *= $lengthZ worldtool

# Meessage
execute if entity @s[tag=!nomeasuredonemessageplzthx] unless score $blocksplaced worldtool matches 0..1 run tellraw @s ["This area contains ",{"score":{"name":"$blocksplaced","objective":"worldtool"}}," blocks. (",{"score":{"name":"$widthX","objective":"worldtool"}}," X * ",{"score":{"name":"$heightY","objective":"worldtool"}}," Y * ",{"score":{"name":"$lengthZ","objective":"worldtool"}}," Z)"]
execute if entity @s[tag=!nomeasuredonemessageplzthx] if score $blocksplaced worldtool matches 0..1 run tellraw @s "This area contains 1 block. (1 X * 1 Y * 1 Z)"
execute if entity @s[tag=random_2] run function worldtool:load_process/randomize/check2
execute if entity @s[tag=wt_measuring_area] run function worldtool:load_process/start_check2
execute if entity @s[tag=wt_measuring_area_clone] run function worldtool:ui_general/menus/clone/start.check2

tag @s remove nomeasuredonemessageplzthx
