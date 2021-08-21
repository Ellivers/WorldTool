# Getting the volume of a sphere

scoreboard players operation #tempRadius worldtool = @s wt_diameter
scoreboard players operation #tempRadius worldtool /= #2 worldtool
scoreboard players operation $blocksplaced worldtool = #tempRadius worldtool
scoreboard players operation $blocksplaced worldtool *= #tempRadius worldtool
scoreboard players operation $blocksplaced worldtool *= #tempRadius worldtool
scoreboard players operation $blocksplaced worldtool *= #pi worldtool
scoreboard players operation $blocksplaced worldtool *= #4 worldtool
scoreboard players operation $blocksplaced worldtool /= #3 worldtool
scoreboard players operation $blocksplaced worldtool /= #10000 worldtool
