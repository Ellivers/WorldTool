# This is how you get the area of a circle

scoreboard players operation $blocksplaced worldtool = @s wt_diameter
scoreboard players operation $blocksplaced worldtool /= #2 worldtool
scoreboard players operation $blocksplaced worldtool *= $blocksplaced worldtool
scoreboard players operation $blocksplaced worldtool /= #10000 worldtool
scoreboard players operation $blocksplaced worldtool *= #pi worldtool
#tellraw @a {"score": {"name": "$blocksplaced","objective": "worldtool"}}
