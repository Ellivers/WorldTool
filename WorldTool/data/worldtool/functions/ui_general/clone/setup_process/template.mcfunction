# Called by worldtool:ui_general/clone/setup_process/load
# Sets up the clone process in template mode

# Save area process

data modify storage worldtool:storage Temp.AdditionalData set value {Tags:["wt.process.save_area","wt.no_message","wt.dont_reopen_menu"]}
tag @s add wt.save_area.clone
function worldtool:technical/save_load/setup_save_process

execute if entity @s[tag=wt.clone.move] run data modify storage worldtool:storage Processes[0].Tags append value "wt.clone.move"
execute if entity @s[tag=wt.clone.mirror.x] run data modify storage worldtool:storage Processes[0].Tags append value "wt.clone.mirror.x"
execute if entity @s[tag=wt.clone.mirror.z] run data modify storage worldtool:storage Processes[0].Tags append value "wt.clone.mirror.z"
execute store result storage worldtool:storage Processes[0].Rotation.Y int 1 run scoreboard players get @s wt.rotY

# Load area process

data modify storage worldtool:storage Temp.AdditionalData set value {Input:{AreaData:{TemplateList:[],Pos:[0d,0d,0d]},AdditionalData:{rotation:"NONE",mirror:"NONE"}},AffectedArea:{From:[0d,0d,0d],To:[0d,0d,0d]}}
data modify storage worldtool:storage Temp.AdditionalData.Input.AreaData.Pos set from storage worldtool:storage Processes[0].Positions.CloneDestination
data modify storage worldtool:storage Temp.AdditionalData.AffectedArea.From set from storage worldtool:storage Processes[0].Positions.CloneDestination

scoreboard players set #tempRotX worldtool 0
execute store result score #tempRotY worldtool run data get storage worldtool:storage Processes[-1].Rotation.Y
scoreboard players set #tempRotZ worldtool 0

execute store success score #mirrorX worldtool if entity @s[tag=wt.clone.mirror.x]
scoreboard players set #mirrorY worldtool 0
execute store success score #mirrorZ worldtool if entity @s[tag=wt.clone.mirror.z]

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[0].Positions.1[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Positions.1[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[0].Positions.1[2]

execute store result score #pos2xt worldtool run data get storage worldtool:storage Processes[0].Positions.2[0]
execute store result score #pos2yt worldtool run data get storage worldtool:storage Processes[0].Positions.2[1]
execute store result score #pos2zt worldtool run data get storage worldtool:storage Processes[0].Positions.2[2]

scoreboard players operation #offsetX worldtool = #pos2xt worldtool
scoreboard players operation #offsetX worldtool -= #pos1xt worldtool
scoreboard players operation #offsetY worldtool = #pos2yt worldtool
scoreboard players operation #offsetY worldtool -= #pos1yt worldtool
scoreboard players operation #offsetZ worldtool = #pos2zt worldtool
scoreboard players operation #offsetZ worldtool -= #pos1zt worldtool

function worldtool:ui_general/clone/get_rotation_offset/rotate_offsets

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[0].Positions.CloneDestination[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Positions.CloneDestination[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[0].Positions.CloneDestination[2]

scoreboard players operation #pos2xt worldtool = #pos1xt worldtool
scoreboard players operation #pos2xt worldtool += #offsetX worldtool
scoreboard players operation #pos2yt worldtool = #pos1yt worldtool
scoreboard players operation #pos2yt worldtool += #offsetY worldtool
scoreboard players operation #pos2zt worldtool = #pos1zt worldtool
scoreboard players operation #pos2zt worldtool += #offsetZ worldtool

data modify storage worldtool:storage Temp.AdditionalData.AffectedArea.To set value [0d,0d,0d]
execute store result storage worldtool:storage Temp.AdditionalData.AffectedArea.To[0] double 1 run scoreboard players get #pos2xt worldtool
execute store result storage worldtool:storage Temp.AdditionalData.AffectedArea.To[1] double 1 run scoreboard players get #pos2yt worldtool
execute store result storage worldtool:storage Temp.AdditionalData.AffectedArea.To[2] double 1 run scoreboard players get #pos2zt worldtool

execute if entity @s[tag=wt.clone.move] run data modify storage worldtool:storage Temp.AdditionalData.Tags set value ["wt.process.load_area","wt.no_message","wt.dont_reopen_menu"]
execute if entity @s[tag=!wt.clone.move] run data modify storage worldtool:storage Temp.AdditionalData.Tags set value ["wt.process.load_area","wt.no_message"]

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
