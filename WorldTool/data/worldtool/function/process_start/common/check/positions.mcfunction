# Called by various functions
# Checks if the positions are valid and gives some fun errors

scoreboard players set #success worldtool 1

function worldtool:technical/common/get_position_counts

# Missing positions
execute unless score #pos1count worldtool matches 1.. if score #pos2count worldtool matches 1 run function worldtool:ui/error/pos1_missing
execute unless score #pos2count worldtool matches 1.. if score #pos1count worldtool matches 1 run function worldtool:ui/error/pos2_missing
execute unless score #pos1count worldtool matches 1.. unless score #pos2count worldtool matches 1.. run function worldtool:ui/error/both_pos_missing

# Duplicate positions
execute if score #pos1count worldtool matches 2.. if score #pos2count worldtool matches 1 run function worldtool:ui/error/pos1_duplicates
execute if score #pos2count worldtool matches 2.. if score #pos1count worldtool matches 1 run function worldtool:ui/error/pos2_duplicates
execute if score #pos1count worldtool matches 2.. if score #pos2count worldtool matches 2.. run function worldtool:ui/error/both_pos_duplicates

# Other
execute if score #success worldtool matches 1 unless score #pos1count worldtool matches 1 unless score #pos2count worldtool matches 1 run function worldtool:ui/error/pos_errors
