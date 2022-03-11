# Called by worldtool:technical/load
# Waits for a player to be in a valid location

scoreboard players set #playerFound worldtool 0

execute as @a[limit=1] run scoreboard players set #playerFound worldtool 1
execute if score #playerFound worldtool matches 1.. at @a[limit=1] run function worldtool:technical/common/is_inside_world

execute if score #playerFound worldtool matches 1.. run schedule function worldtool:technical/load/init_dimensions 2t
execute if score #playerFound worldtool matches 0 run schedule function worldtool:technical/load/wait_for_player 5t
