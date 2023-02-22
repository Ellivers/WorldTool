# Called by worldtool:process_start/variables
# Sets variables used by the smooth_calculate process

execute store result score #diffThreshold worldtool run data get storage worldtool:storage Processes[-1].Input.Threshold

scoreboard players operation #diffThresholdNegative worldtool = #diffThreshold worldtool
scoreboard players operation #diffThresholdNegative worldtool *= #-1 worldtool

scoreboard players set #smoothDivision worldtool 4
