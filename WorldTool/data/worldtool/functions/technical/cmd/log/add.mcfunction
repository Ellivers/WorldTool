# Called by various functions
# Adds a line to the log

execute unless data storage worldtool:storage Log run data modify storage worldtool:storage Log set value []

data modify storage worldtool:storage Log prepend value {}
data modify storage worldtool:storage Log[0].Message set from storage worldtool:storage Temp.LogEntry.Message
data modify storage worldtool:storage Log[0].Type set from storage worldtool:storage Temp.LogEntry.Type
execute store result storage worldtool:storage Log[0].Time int 1 run time query gametime

execute store result score #temp worldtool run data get storage worldtool:storage Log
execute if score #temp worldtool >= $logLimit worldtool run data remove storage worldtool:storage Log[-1]
