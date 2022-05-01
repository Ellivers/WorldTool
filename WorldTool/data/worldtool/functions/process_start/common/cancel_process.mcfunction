# Called by various processes
# Cancels the process and removes it from the queue

scoreboard players set #success worldtool 0
data remove storage worldtool:storage Processes[0]
