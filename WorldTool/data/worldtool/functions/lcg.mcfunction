# Semi-randomness (thx dominexis)

# Generate random number
scoreboard players operation #rng worldtool *= #rng_multiplier worldtool
scoreboard players operation #rng worldtool += #rng_increment worldtool

# Return output
scoreboard players operation #output worldtool = #rng worldtool
scoreboard players operation #output worldtool %= #maximum worldtool
