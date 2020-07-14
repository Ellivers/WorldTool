execute if predicate worldtool:brush/axis/x run tag @s add axis.x
execute if predicate worldtool:brush/axis/y run tag @s add axis.y
execute if predicate worldtool:brush/axis/z run tag @s add axis.z

scoreboard players reset #X worldtool
scoreboard players reset #Y worldtool
scoreboard players reset #Z worldtool

execute if predicate worldtool:brush/axis/auto run function worldtool:brush/brushes/circle/get_axis
execute if entity @s[tag=axis.x] run scoreboard players set #X worldtool 1
execute if entity @s[tag=axis.y] run scoreboard players set #Y worldtool 1
execute if entity @s[tag=axis.z] run scoreboard players set #Z worldtool 1

schedule function worldtool:brush/brushes/flat/load_tick 2t