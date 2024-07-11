# Called by worldtool:cmd/view_log
# Loops through and displays the log entries

scoreboard players add #temp worldtool 1

execute store result score #messageTime worldtool run data get storage worldtool:storage Log[0].Time
scoreboard players operation #timeDifference worldtool = #currentTime worldtool
scoreboard players operation #timeDifference worldtool -= #messageTime worldtool
scoreboard players operation #timeDifference worldtool /= #20 worldtool

execute unless score #messageTime worldtool matches 0 if score #timeDifference worldtool matches ..59 run function worldtool:technical/cmd/log_loop/seconds
execute unless score #messageTime worldtool matches 0 if score #timeDifference worldtool matches 60..3599 run function worldtool:technical/cmd/log_loop/minutes
execute unless score #messageTime worldtool matches 0 if score #timeDifference worldtool matches 3600..86399 run function worldtool:technical/cmd/log_loop/hours
execute unless score #messageTime worldtool matches 0 if score #timeDifference worldtool matches 86400.. run function worldtool:technical/cmd/log_loop/days

data modify storage worldtool:storage Log append from storage worldtool:storage Log[0]
data remove storage worldtool:storage Log[0]

execute unless score #temp worldtool >= #temp2 worldtool run function worldtool:technical/cmd/log_loop/main
