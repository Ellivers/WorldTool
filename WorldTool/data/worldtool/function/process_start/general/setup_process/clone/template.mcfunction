# Called by worldtool:process_start/general/setup_process/clone/load
# Sets up the clone process in template mode

# Save area process

data modify storage worldtool:storage Temp.AdditionalData set value {Tags:["wt.process.save_area","wt.no_message","wt.dont_reopen_menu"]}
tag @s add wt.save_area.clone
function worldtool:technical/save_load/setup_save_process/setup

execute if entity @s[tag=wt.clone.move] run data modify storage worldtool:storage Processes[0].Tags append value "wt.clone.move"
execute if entity @s[tag=wt.clone.mirror.x] run data modify storage worldtool:storage Processes[0].Tags append value "wt.clone.mirror.x"
execute if entity @s[tag=wt.clone.mirror.z] run data modify storage worldtool:storage Processes[0].Tags append value "wt.clone.mirror.z"
execute store result storage worldtool:storage Processes[0].Input.Rotation.Y int 1 run scoreboard players get @s wt.rotY

### Load area process

data modify storage worldtool:storage Temp.AdditionalData set value {Input:{AreaList:[{TemplateList:[],Pos:[0d,0d,0d]}],AdditionalData:{rotation:"NONE",mirror:"NONE"}},AffectedArea:{From:[0d,0d,0d],To:[0d,0d,0d]}}

# Add rotation info

scoreboard players set #tempRotX worldtool 0
execute store result score #tempRotY worldtool run data get storage worldtool:storage Processes[-1].Input.Rotation.Y
scoreboard players set #tempRotZ worldtool 0

execute store success score #mirrorX worldtool if entity @s[tag=wt.clone.mirror.x]
scoreboard players set #mirrorY worldtool 0
execute store success score #mirrorZ worldtool if entity @s[tag=wt.clone.mirror.z]

# Get positions

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos1
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos2

## 1 - Template placement

# 1. Get the original, non-rotated offsets
# 2. Rotate the original
# 3. Get the lowest northwest corner
# 4. Rotate the lowest northwest corner's positive offsets
# 5. On the axes were the rotated original offsets and the rotated lowest northwest corner's
# offsets are different, add the rotated original offset to the secondary position

# Get the original, non-rotated offsets

scoreboard players operation #offsetXA worldtool = #pos2xt worldtool
scoreboard players operation #offsetXA worldtool -= #pos1xt worldtool
scoreboard players operation #offsetYA worldtool = #pos2yt worldtool
scoreboard players operation #offsetYA worldtool -= #pos1yt worldtool
scoreboard players operation #offsetZA worldtool = #pos2zt worldtool
scoreboard players operation #offsetZA worldtool -= #pos1zt worldtool

# Rotate the original

scoreboard players operation #offsetX worldtool = #offsetXA worldtool
scoreboard players operation #offsetY worldtool = #offsetYA worldtool
scoreboard players operation #offsetZ worldtool = #offsetZA worldtool

function worldtool:ui_general/clone/get_rotation_offset/rotate_offsets

# Get the lowest northwest corner

scoreboard players operation #offsetXB worldtool = #offsetXA worldtool
scoreboard players operation #offsetYB worldtool = #offsetYA worldtool
scoreboard players operation #offsetZB worldtool = #offsetZA worldtool

scoreboard players operation #offsetXA worldtool = #offsetX worldtool
scoreboard players operation #offsetYA worldtool = #offsetY worldtool
scoreboard players operation #offsetZA worldtool = #offsetZ worldtool

execute if score #offsetXB worldtool matches ..-1 run scoreboard players operation #offsetXB worldtool *= #-1 worldtool
execute if score #offsetYB worldtool matches ..-1 run scoreboard players operation #offsetYB worldtool *= #-1 worldtool
execute if score #offsetZB worldtool matches ..-1 run scoreboard players operation #offsetZB worldtool *= #-1 worldtool

# Rotate the lowest northwest corner's positive offsets

scoreboard players operation #offsetX worldtool = #offsetXB worldtool
scoreboard players operation #offsetY worldtool = #offsetYB worldtool
scoreboard players operation #offsetZ worldtool = #offsetZB worldtool

function worldtool:ui_general/clone/get_rotation_offset/rotate_offsets

# On the axes were the rotated original offsets and the rotated lowest northwest corner's
# offsets are different, add the rotated original offset to the secondary position

execute store result score #tempPosX worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[0]
execute store result score #tempPosY worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[1]
execute store result score #tempPosZ worldtool run data get storage worldtool:storage Processes[0].Positions.Secondary[2]

execute unless score #offsetX worldtool = #offsetXA worldtool run scoreboard players operation #tempPosX worldtool += #offsetXA worldtool
execute unless score #offsetY worldtool = #offsetYA worldtool run scoreboard players operation #tempPosY worldtool += #offsetYA worldtool
execute unless score #offsetZ worldtool = #offsetZA worldtool run scoreboard players operation #tempPosZ worldtool += #offsetZA worldtool

# Store the position

execute store result storage worldtool:storage Temp.AdditionalData.Input.AreaList[0].Pos[0] double 1 run scoreboard players get #tempPosX worldtool
execute store result storage worldtool:storage Temp.AdditionalData.Input.AreaList[0].Pos[1] double 1 run scoreboard players get #tempPosY worldtool
execute store result storage worldtool:storage Temp.AdditionalData.Input.AreaList[0].Pos[2] double 1 run scoreboard players get #tempPosZ worldtool


## 2 - Affected area

scoreboard players operation #offsetX worldtool = #pos2xt worldtool
scoreboard players operation #offsetX worldtool -= #pos1xt worldtool
scoreboard players operation #offsetY worldtool = #pos2yt worldtool
scoreboard players operation #offsetY worldtool -= #pos1yt worldtool
scoreboard players operation #offsetZ worldtool = #pos2zt worldtool
scoreboard players operation #offsetZ worldtool -= #pos1zt worldtool

function worldtool:ui_general/clone/get_rotation_offset/rotate_offsets

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

execute if entity @s[tag=wt.clone.mirror.x] run data modify storage worldtool:storage Temp.AdditionalData.Input.AdditionalData.mirror set value "FRONT_BACK"
execute if entity @s[tag=wt.clone.mirror.z] run data modify storage worldtool:storage Temp.AdditionalData.Input.AdditionalData.mirror set value "LEFT_RIGHT"

function worldtool:technical/save_load/setup_load_process

# Remove the previous area (if moved)

tag @s remove wt.keep
execute if entity @s[tag=wt.clone.move] run data modify storage worldtool:storage Temp.AdditionalTags set value ["wt.no_message"]
execute if entity @s[tag=wt.clone.move] run function worldtool:process_start/general/setup_process/fill
