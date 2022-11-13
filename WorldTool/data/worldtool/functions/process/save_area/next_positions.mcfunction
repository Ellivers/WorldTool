# Called by worldtool:process/save_area/main
# Moves onto the next area to save, if there is any

execute store result score #pos1xo worldtool run data get storage worldtool:storage Processes[-1].Input.NextPositions[0].1[0]
execute store result score #pos1yo worldtool run data get storage worldtool:storage Processes[-1].Input.NextPositions[0].1[1]
execute store result score #pos1zo worldtool run data get storage worldtool:storage Processes[-1].Input.NextPositions[0].1[2]

execute store result score #pos2xo worldtool run data get storage worldtool:storage Processes[-1].Input.NextPositions[0].2[0]
execute store result score #pos2yo worldtool run data get storage worldtool:storage Processes[-1].Input.NextPositions[0].2[1]
execute store result score #pos2zo worldtool run data get storage worldtool:storage Processes[-1].Input.NextPositions[0].2[2]

scoreboard players operation #pos1x worldtool = #pos1xo worldtool
scoreboard players operation #pos1y worldtool = #pos1yo worldtool
scoreboard players operation #pos1z worldtool = #pos1zo worldtool

scoreboard players operation #pos2x worldtool = #pos2xo worldtool
scoreboard players operation #pos2y worldtool = #pos2yo worldtool
scoreboard players operation #pos2z worldtool = #pos2zo worldtool

scoreboard players operation #processPosX worldtool = #pos1xo worldtool
scoreboard players operation #processPosY worldtool = #pos1yo worldtool
scoreboard players operation #processPosZ worldtool = #pos1zo worldtool

data modify storage worldtool:storage Processes[-1].Output.SavedAreas append value {TemplateList:[]}
data modify storage worldtool:storage Processes[-1].Output.SavedAreas[-1].Positions set from storage worldtool:storage Processes[-1].Input.NextPositions[0]
data modify entity @s Pos set from storage worldtool:storage Processes[-1].Input.NextPositions[0].1
data remove storage worldtool:storage Processes[-1].Input.NextPositions[0]

execute at @s run function worldtool:process/save_area/main
