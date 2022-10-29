# Called by worldtool:process/greenery/check_base
# Continues if the random number is right

scoreboard players set #lcgMax worldtool 100
function worldtool:technical/common/lcg

execute if score #lcgResult worldtool <= #plantRate worldtool positioned ~ ~1 ~ run function worldtool:process/greenery/check_table
