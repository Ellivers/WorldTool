# Called by worldtool:cmd/view_log
# Loops through and displays the log entries

scoreboard players add #temp worldtool 1

data modify storage worldtool:storage Temp.LogListEntry set from storage worldtool:storage Log[-1]

execute store result score #messageTime worldtool run data get storage worldtool:storage Log[-1].Time
scoreboard players set #temp3 worldtool 0
execute if data storage rx.playerdb:io player.data.WorldTool.LogView{info:1b} if data storage worldtool:storage Temp.LogListEntry{Type:"info"} run scoreboard players set #temp3 worldtool 1
execute if data storage rx.playerdb:io player.data.WorldTool.LogView{warning:1b} if data storage worldtool:storage Temp.LogListEntry{Type:"warning"} run scoreboard players set #temp3 worldtool 1
execute if data storage rx.playerdb:io player.data.WorldTool.LogView{error:1b} if data storage worldtool:storage Temp.LogListEntry{Type:"error"} run scoreboard players set #temp3 worldtool 1
execute if score #temp3 worldtool matches 0 run scoreboard players set #messageTime worldtool 0
scoreboard players operation #timeDifference worldtool = #currentTime worldtool
scoreboard players operation #timeDifference worldtool -= #messageTime worldtool
scoreboard players operation #timeDifference worldtool /= #20 worldtool

execute unless score #messageTime worldtool matches 0 if score #timeDifference worldtool matches ..59 run function worldtool:technical/cmd/log/loop/seconds
execute unless score #messageTime worldtool matches 0 if score #timeDifference worldtool matches 60..3599 run function worldtool:technical/cmd/log/loop/minutes
execute unless score #messageTime worldtool matches 0 if score #timeDifference worldtool matches 3600..86399 run function worldtool:technical/cmd/log/loop/hours
execute unless score #messageTime worldtool matches 0 if score #timeDifference worldtool matches 86400.. run function worldtool:technical/cmd/log/loop/days

data modify storage worldtool:storage Log prepend from storage worldtool:storage Log[-1]
data remove storage worldtool:storage Log[-1]

execute unless score #temp worldtool >= #temp2 worldtool run function worldtool:technical/cmd/log/loop/main
