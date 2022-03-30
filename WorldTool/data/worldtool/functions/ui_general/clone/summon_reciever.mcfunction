# Called by worldtool:process_start/common/start and INSERT_FUNCTION
# Summons the cloning reciever

summon minecraft:marker ~ ~ ~ {CustomName:'"WorldTool Clone Reciever"',Tags:["worldtool","wt.reciever"],UUID:[I;-1736389378,-34192072,-2088051257,1515479182]}

# Kill the temporary marker
kill @s[tag=wt.reciever_marker]
