# Called by worldtool:process_start/variables
# Sets the necessary variables for the repeat process

scoreboard players operation #processPosX worldtool = #pos2x worldtool
scoreboard players operation #processPosY worldtool = #pos2y worldtool
scoreboard players operation #processPosZ worldtool = #pos2z worldtool
scoreboard players remove #processPosX worldtool 1
scoreboard players remove #processPosY worldtool 1
scoreboard players remove #processPosZ worldtool 1

scoreboard players operation #originPosX worldtool = #pos2x worldtool
scoreboard players operation #originPosY worldtool = #pos2y worldtool
scoreboard players operation #originPosZ worldtool = #pos2z worldtool

scoreboard players set #repeatPosX worldtool 0
scoreboard players set #repeatPosY worldtool 0
scoreboard players set #repeatPosZ worldtool 0

scoreboard players set #previousStartX worldtool 0
scoreboard players set #previousStartZ worldtool 0

execute store result score #repeatDestX worldtool run data get storage worldtool:storage Processes[-1].Input.Amount.X
execute store result score #repeatDestY worldtool run data get storage worldtool:storage Processes[-1].Input.Amount.Y
execute store result score #repeatDestZ worldtool run data get storage worldtool:storage Processes[-1].Input.Amount.Z

execute store result score #areaSizeX worldtool run data get storage worldtool:storage Processes[-1].Input.AreaSize.X
execute store result score #areaSizeY worldtool run data get storage worldtool:storage Processes[-1].Input.AreaSize.Y
execute store result score #areaSizeZ worldtool run data get storage worldtool:storage Processes[-1].Input.AreaSize.Z

execute store result score #repeatSpacing worldtool run data get storage worldtool:storage Processes[-1].Input.Spacing
