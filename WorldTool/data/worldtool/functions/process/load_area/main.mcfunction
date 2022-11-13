# Called recursively and by worldtool:process/load.tags
# The process functionality for loading an area

scoreboard players add #blocksChecked worldtool 1

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[-1].Input.AreaList[0].TemplateList[0].Pos[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[-1].Input.AreaList[0].TemplateList[0].Pos[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[-1].Input.AreaList[0].TemplateList[0].Pos[2]

scoreboard players operation #pos1xt worldtool += #pos1xo worldtool
scoreboard players operation #pos1yt worldtool += #pos1yo worldtool
scoreboard players operation #pos1zt worldtool += #pos1zo worldtool

data modify storage worldtool:storage Temp.Pos set value [0d,0d,0d]
execute store result storage worldtool:storage Temp.Pos[0] double 1 run scoreboard players get #pos1xt worldtool
execute store result storage worldtool:storage Temp.Pos[1] double 1 run scoreboard players get #pos1yt worldtool
execute store result storage worldtool:storage Temp.Pos[2] double 1 run scoreboard players get #pos1zt worldtool

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run data modify entity @s Pos set from storage worldtool:storage Temp.Pos

execute at @s run function worldtool:process/load_area/place

scoreboard players set #block1Placed worldtool 0
scoreboard players set #block2Placed worldtool 0

data remove storage worldtool:storage Processes[-1].Input.AreaList[0].TemplateList[0]
execute unless data storage worldtool:storage Processes[-1].Input.AreaList[0].TemplateList[0] if data storage worldtool:storage Processes[-1].Input.AreaList[1].Pos store result score #pos1xo worldtool run data get storage worldtool:storage Processes[-1].Input.AreaList[1].Pos[0]
execute unless data storage worldtool:storage Processes[-1].Input.AreaList[0].TemplateList[0] if data storage worldtool:storage Processes[-1].Input.AreaList[1].Pos store result score #pos1yo worldtool run data get storage worldtool:storage Processes[-1].Input.AreaList[1].Pos[1]
execute unless data storage worldtool:storage Processes[-1].Input.AreaList[0].TemplateList[0] if data storage worldtool:storage Processes[-1].Input.AreaList[1].Pos store result score #pos1zo worldtool run data get storage worldtool:storage Processes[-1].Input.AreaList[1].Pos[2]
execute unless data storage worldtool:storage Processes[-1].Input.AreaList[0].TemplateList[0] run data remove storage worldtool:storage Processes[-1].Input.AreaList[0]

execute unless score #blocksChecked worldtool >= #templatesToLoad worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/load_area/main

# End the process
scoreboard players operation #processPosX worldtool = #pos2x worldtool
scoreboard players operation #processPosY worldtool = #pos2y worldtool
scoreboard players operation #processPosZ worldtool = #pos2z worldtool
