# Called by worldtool:ui_general/clone/setup_process/load
# Sets up the clone process in template mode

# Save area process

data modify storage worldtool:storage Temp.AdditionalData set value {Tags:["wt.process.save_area","wt.no_message","wt.dont_reopen_menu"]}
tag @s add wt.save_area.clone
function worldtool:technical/save_load/setup_save_process

execute if entity @s[tag=wt.clone.move] run data modify storage worldtool:storage Processes[0].Tags append value "wt.clone.move"
execute if entity @s[tag=wt.clone.mirror.x] run data modify storage worldtool:storage Processes[0].Tags append value "wt.clone.mirror.x"
execute if entity @s[tag=wt.clone.mirror.z] run data modify storage worldtool:storage Processes[0].Tags append value "wt.clone.mirror.z"
execute store result storage worldtool:storage Processes[0].Input.Rotation.Y int 1 run scoreboard players get @s wt.rotY

# Load area process

data modify storage worldtool:storage Temp.AdditionalData set value {Input:{AreaData:{TemplateList:[],Pos:[0d,0d,0d]},AdditionalData:{rotation:"NONE",mirror:"NONE"}},AffectedArea:{From:[0d,0d,0d],To:[0d,0d,0d]}}

# 1

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos1
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos2

scoreboard players operation #offsetX worldtool = #pos2xt worldtool
scoreboard players operation #offsetX worldtool -= #pos1xt worldtool
scoreboard players operation #offsetY worldtool = #pos2yt worldtool
scoreboard players operation #offsetY worldtool -= #pos1yt worldtool
scoreboard players operation #offsetZ worldtool = #pos2zt worldtool
scoreboard players operation #offsetZ worldtool -= #pos1zt worldtool

scoreboard players set #tempRotX worldtool 0
execute store result score #tempRotY worldtool run data get storage worldtool:storage Processes[-1].Input.Rotation.Y
scoreboard players set #tempRotZ worldtool 0

execute store success score #mirrorX worldtool if entity @s[tag=wt.clone.mirror.x]
scoreboard players set #mirrorY worldtool 0
execute store success score #mirrorZ worldtool if entity @s[tag=wt.clone.mirror.z]

function worldtool:ui_general/clone/get_rotation_offset/rotate_offsets

scoreboard players operation #pos2xt worldtool = #pos1xt worldtool
scoreboard players operation #pos2xt worldtool += #offsetX worldtool
scoreboard players operation #pos2yt worldtool = #pos1yt worldtool
scoreboard players operation #pos2yt worldtool += #offsetY worldtool
scoreboard players operation #pos2zt worldtool = #pos1zt worldtool
scoreboard players operation #pos2zt worldtool += #offsetZ worldtool

scoreboard players operation #offsetX worldtool = #pos2xt worldtool
scoreboard players operation #offsetX worldtool -= #pos1xt worldtool
scoreboard players operation #offsetY worldtool = #pos2yt worldtool
scoreboard players operation #offsetY worldtool -= #pos1yt worldtool
scoreboard players operation #offsetZ worldtool = #pos2zt worldtool
scoreboard players operation #offsetZ worldtool -= #pos1zt worldtool

execute store result score #tempPosX worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[0]
execute store result score #tempPosY worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[1]
execute store result score #tempPosZ worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[2]

execute if score #offsetX worldtool matches ..-1 run scoreboard players operation #tempPosX worldtool += #offsetX worldtool
execute if score #offsetY worldtool matches ..-1 run scoreboard players operation #tempPosY worldtool += #offsetY worldtool
execute if score #offsetZ worldtool matches ..-1 run scoreboard players operation #tempPosZ worldtool += #offsetZ worldtool

execute if score #offsetX worldtool matches ..-1 run scoreboard players operation #offsetX worldtool *= #-1 worldtool
execute if score #offsetY worldtool matches ..-1 run scoreboard players operation #offsetY worldtool *= #-1 worldtool
execute if score #offsetZ worldtool matches ..-1 run scoreboard players operation #offsetZ worldtool *= #-1 worldtool

scoreboard players operation #diffX worldtool = #offsetX worldtool
scoreboard players operation #diffZ worldtool = #offsetZ worldtool
scoreboard players operation #diffY worldtool = #offsetY worldtool

function worldtool:ui_general/clone/get_rotation_offset/rotate_offsets

scoreboard players operation #diffX worldtool -= #offsetX worldtool
scoreboard players operation #diffY worldtool -= #offsetY worldtool
scoreboard players operation #diffZ worldtool -= #offsetZ worldtool
scoreboard players operation #diffX worldtool /= #2 worldtool
scoreboard players operation #diffY worldtool /= #2 worldtool
scoreboard players operation #diffZ worldtool /= #2 worldtool

scoreboard players operation #tempPosX worldtool += #diffX worldtool
scoreboard players operation #tempPosY worldtool += #diffY worldtool
scoreboard players operation #tempPosZ worldtool += #diffZ worldtool

execute store result storage worldtool:storage Temp.AdditionalData.Input.AreaData.Pos[0] double 1 run scoreboard players get #tempPosX worldtool
execute store result storage worldtool:storage Temp.AdditionalData.Input.AreaData.Pos[1] double 1 run scoreboard players get #tempPosY worldtool
execute store result storage worldtool:storage Temp.AdditionalData.Input.AreaData.Pos[2] double 1 run scoreboard players get #tempPosZ worldtool

# 2

scoreboard players operation #offsetX worldtool = #pos2xt worldtool
scoreboard players operation #offsetX worldtool -= #pos1xt worldtool
scoreboard players operation #offsetY worldtool = #pos2yt worldtool
scoreboard players operation #offsetY worldtool -= #pos1yt worldtool
scoreboard players operation #offsetZ worldtool = #pos2zt worldtool
scoreboard players operation #offsetZ worldtool -= #pos1zt worldtool

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[2]

scoreboard players operation #pos2xt worldtool = #pos1xt worldtool
scoreboard players operation #pos2xt worldtool += #offsetX worldtool
scoreboard players operation #pos2yt worldtool = #pos1yt worldtool
scoreboard players operation #pos2yt worldtool += #offsetY worldtool
scoreboard players operation #pos2zt worldtool = #pos1zt worldtool
scoreboard players operation #pos2zt worldtool += #offsetZ worldtool

data modify storage worldtool:storage Temp.AdditionalData.AffectedArea.From set from storage worldtool:storage Processes[0].Positions.Secondary
data modify storage worldtool:storage Temp.AdditionalData.AffectedArea.To set value [0d,0d,0d]
execute store result storage worldtool:storage Temp.AdditionalData.AffectedArea.To[0] double 1 run scoreboard players get #pos2xt worldtool
execute store result storage worldtool:storage Temp.AdditionalData.AffectedArea.To[1] double 1 run scoreboard players get #pos2yt worldtool
execute store result storage worldtool:storage Temp.AdditionalData.AffectedArea.To[2] double 1 run scoreboard players get #pos2zt worldtool


data modify storage worldtool:storage Temp.AdditionalData.Tags set value ["wt.process.load_area","wt.process.load_area.clone","wt.no_message"]
execute if entity @s[tag=wt.clone.move] run data modify storage worldtool:storage Temp.AdditionalData.Tags append value "wt.dont_reopen_menu"

execute if score @s wt.rotY matches 90 run data modify storage worldtool:storage Temp.AdditionalData.Input.AdditionalData.rotation set value "CLOCKWISE_90"
execute if score @s wt.rotY matches 180 run data modify storage worldtool:storage Temp.AdditionalData.Input.AdditionalData.rotation set value "CLOCKWISE_180"
execute if score @s wt.rotY matches 270 run data modify storage worldtool:storage Temp.AdditionalData.Input.AdditionalData.rotation set value "COUNTERCLOCKWISE_90"

execute if entity @s[tag=wt.clone.mirror.x] run data modify storage worldtool:storage Temp.AdditionalData.Input.AdditionalData.mirror set value "LEFT_RIGHT"
execute if entity @s[tag=wt.clone.mirror.z] run data modify storage worldtool:storage Temp.AdditionalData.Input.AdditionalData.mirror set value "FRONT_BACK"

function worldtool:technical/save_load/setup_load_process

# Remove the previous area (if moved)

tag @s remove wt.keep
execute if entity @s[tag=wt.clone.move] run data modify storage worldtool:storage Temp.AdditionalTags set value ["wt.no_message"]
execute if entity @s[tag=wt.clone.move] run function worldtool:ui_general/fill/setup_process
