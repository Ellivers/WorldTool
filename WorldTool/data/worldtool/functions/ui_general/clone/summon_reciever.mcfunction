# Called by worldtool:process_start/common/start
# Summons the cloning reciever

kill 9880ccfe-fdf6-4538-838a-ddc75a54608e
summon minecraft:marker ~ ~ ~ {CustomName:'"WorldTool Clone Reciever"',Tags:["worldtool","wt.reciever"],UUID:[I;-1736389378,-34192072,-2088051257,1515479182]}

data modify entity 9880ccfe-fdf6-4538-838a-ddc75a54608e Pos set from storage worldtool:storage Processes[-1].Positions.CloneDestination
