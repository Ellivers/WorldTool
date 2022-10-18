# Generates a "random" number

scoreboard players operation #rng worldtool *= #lcgMultiplier worldtool
scoreboard players operation #rng worldtool += #lcgIncrement worldtool
scoreboard players operation #lcgResult worldtool = #rng worldtool
scoreboard players operation #lcgResult worldtool /= #100 worldtool
scoreboard players operation #lcgResult worldtool %= #lcgMax worldtool
