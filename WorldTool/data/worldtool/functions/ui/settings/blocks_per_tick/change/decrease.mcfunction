# Called by various functions
# Decreases a blocks per tick value by 500

scoreboard players remove #temp worldtool 200
execute if score #temp worldtool matches ..199 run scoreboard players set #temp worldtool 2147483647
data modify storage worldtool:storage BlocksPerTick.Preset set value "custom"
