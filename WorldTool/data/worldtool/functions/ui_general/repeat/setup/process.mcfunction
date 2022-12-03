# Called by worldtool:process_start/common/setup_process
# Sets up the repeat process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.repeat\\"","storage":"worldtool:storage"}',ID:"worldtool:repeat",Tags:["wt.process.repeat","wt.secondary_process_entity"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:repeat"}].Value

execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.repeat.filter.normal"
execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Processes[0].SecondaryTags append value "wt.process.repeat.filter.normal"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.repeat.filter.exclude"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Processes[0].SecondaryTags append value "wt.process.repeat.filter.exclude"

execute store result storage worldtool:storage Processes[0].Input.Amount.X int 1 run scoreboard players get @s wt.amountX
execute store result storage worldtool:storage Processes[0].Input.Amount.Y int 1 run scoreboard players get @s wt.amountY
execute store result storage worldtool:storage Processes[0].Input.Amount.Z int 1 run scoreboard players get @s wt.amountZ
execute store result storage worldtool:storage Processes[0].Input.Spacing int 1 run scoreboard players get @s wt.size

function worldtool:process_start/general/set_process_values

function worldtool:process_start/common/lock_direction/from_bottom

data modify storage worldtool:storage Processes[0].Positions.Secondary set from storage worldtool:storage Processes[0].Positions.1

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[0].Positions.1[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Positions.1[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[0].Positions.1[2]

execute store result score #pos2xt worldtool run data get storage worldtool:storage Processes[0].Positions.2[0]
execute store result score #pos2yt worldtool run data get storage worldtool:storage Processes[0].Positions.2[1]
execute store result score #pos2zt worldtool run data get storage worldtool:storage Processes[0].Positions.2[2]

tag @s add wt.no_message
function worldtool:measure/area/measure

execute store result storage worldtool:storage Processes[0].Input.AreaSize.X int 1 run scoreboard players get #sizeX worldtool
execute store result storage worldtool:storage Processes[0].Input.AreaSize.Y int 1 run scoreboard players get #sizeY worldtool
execute store result storage worldtool:storage Processes[0].Input.AreaSize.Z int 1 run scoreboard players get #sizeZ worldtool

scoreboard players set #corner1x_temp worldtool 2147483647
scoreboard players operation #corner1x_temp worldtool < #pos1xt worldtool
scoreboard players operation #corner1x_temp worldtool < #pos2xt worldtool

scoreboard players set #corner1y_temp worldtool 2147483647
scoreboard players operation #corner1y_temp worldtool < #pos1yt worldtool
scoreboard players operation #corner1y_temp worldtool < #pos2yt worldtool

scoreboard players set #corner1z_temp worldtool 2147483647
scoreboard players operation #corner1z_temp worldtool < #pos1zt worldtool
scoreboard players operation #corner1z_temp worldtool < #pos2zt worldtool

scoreboard players set #corner2x_temp worldtool -2147483648
scoreboard players operation #corner2x_temp worldtool > #pos1xt worldtool
scoreboard players operation #corner2x_temp worldtool > #pos2xt worldtool

scoreboard players set #corner2y_temp worldtool -2147483648
scoreboard players operation #corner2y_temp worldtool > #pos1yt worldtool
scoreboard players operation #corner2y_temp worldtool > #pos2yt worldtool

scoreboard players set #corner2z_temp worldtool -2147483648
scoreboard players operation #corner2z_temp worldtool > #pos1zt worldtool
scoreboard players operation #corner2z_temp worldtool > #pos2zt worldtool

execute if score @s wt.amountX matches 0.. run scoreboard players operation #pos1xt worldtool = #corner1x_temp worldtool
execute if score @s wt.amountX matches ..-1 run scoreboard players operation #pos1xt worldtool = #corner2x_temp worldtool

execute if score @s wt.amountY matches 0.. run scoreboard players operation #pos1yt worldtool = #corner1y_temp worldtool
execute if score @s wt.amountY matches ..-1 run scoreboard players operation #pos1yt worldtool = #corner2y_temp worldtool

execute if score @s wt.amountZ matches 0.. run scoreboard players operation #pos1zt worldtool = #corner1z_temp worldtool
execute if score @s wt.amountZ matches ..-1 run scoreboard players operation #pos1zt worldtool = #corner2z_temp worldtool

data modify storage worldtool:storage Processes[0].AffectedArea.From set value [0d,0d,0d]
execute store result storage worldtool:storage Processes[0].AffectedArea.From[0] double 1 run scoreboard players get #pos1xt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.From[1] double 1 run scoreboard players get #pos1yt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.From[2] double 1 run scoreboard players get #pos1zt worldtool

execute if score @s wt.amountX matches 0.. run scoreboard players operation #pos2xt worldtool = #corner2x_temp worldtool
execute if score @s wt.amountX matches ..-1 run scoreboard players operation #pos2xt worldtool = #corner1x_temp worldtool

execute if score @s wt.amountY matches 0.. run scoreboard players operation #pos2yt worldtool = #corner2y_temp worldtool
execute if score @s wt.amountY matches ..-1 run scoreboard players operation #pos2yt worldtool = #corner1y_temp worldtool

execute if score @s wt.amountZ matches 0.. run scoreboard players operation #pos2zt worldtool = #corner2z_temp worldtool
execute if score @s wt.amountZ matches ..-1 run scoreboard players operation #pos2zt worldtool = #corner1z_temp worldtool

scoreboard players operation #temp worldtool = #sizeX worldtool
scoreboard players operation #temp worldtool *= @s wt.amountX
scoreboard players operation #pos2xt worldtool += #temp worldtool
scoreboard players operation #temp worldtool = @s wt.size
scoreboard players operation #temp worldtool *= @s wt.amountX
scoreboard players operation #pos2xt worldtool += #temp worldtool

scoreboard players operation #temp worldtool = #sizeY worldtool
scoreboard players operation #temp worldtool *= @s wt.amountY
scoreboard players operation #pos2yt worldtool += #temp worldtool
scoreboard players operation #temp worldtool = @s wt.size
scoreboard players operation #temp worldtool *= @s wt.amountY
scoreboard players operation #pos2yt worldtool += #temp worldtool

scoreboard players operation #temp worldtool = #sizeZ worldtool
scoreboard players operation #temp worldtool *= @s wt.amountZ
scoreboard players operation #pos2zt worldtool += #temp worldtool
scoreboard players operation #temp worldtool = @s wt.size
scoreboard players operation #temp worldtool *= @s wt.amountZ
scoreboard players operation #pos2zt worldtool += #temp worldtool

data modify storage worldtool:storage Processes[0].AffectedArea.To set value [0d,0d,0d]
execute store result storage worldtool:storage Processes[0].AffectedArea.To[0] double 1 run scoreboard players get #pos2xt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.To[1] double 1 run scoreboard players get #pos2yt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.To[2] double 1 run scoreboard players get #pos2zt worldtool

tag @s remove wt.setup.repeat

function worldtool:technical/save_load/backup/load
