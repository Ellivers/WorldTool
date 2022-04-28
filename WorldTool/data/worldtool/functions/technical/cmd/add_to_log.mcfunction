# Called by various functions
# Adds a line to the log

execute unless data storage worldtool:storage Log run data modify storage worldtool:storage Log set value []

data modify storage worldtool:storage Log append from storage worldtool:storage Temp.LogEntry

execute store result score #temp worldtool run data get storage worldtool:storage Log
execute if score #temp worldtool >= $logLimit worldtool run data remove storage worldtool:storage Log[0]
