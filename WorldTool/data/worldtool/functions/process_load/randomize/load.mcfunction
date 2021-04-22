# Kill randompoints
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @a if score @s wt_ID = #ID_temp worldtool run tag @s add wt_started_function
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randompoint] if score @s wt_ID = #ID_temp worldtool run kill @s

scoreboard players set $functionRunning worldtool 1

# Get position 1
execute store result score $pos1x worldtool run data get entity @s Pos[0]
execute store result score $pos1y worldtool run data get entity @s Pos[1]
execute store result score $pos1z worldtool run data get entity @s Pos[2]
# Set the blocks-per-tick setting for this function (randomize 1) to its default valu if it's not in a supported range
execute unless score $blocksPerTick worldtool matches 2.. run scoreboard players set $blocksPerTick worldtool 4000

# Get position 2
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randomcorner2] if score @s wt_ID = #ID_temp worldtool run function worldtool:process_load/positions/get_pos2

# Set the current position where blocks are being drawn
scoreboard players operation $drawingposY worldtool = $pos1y worldtool
scoreboard players operation $drawingposZ worldtool = $pos1z worldtool
scoreboard players operation $drawingposX worldtool = $pos1x worldtool

scoreboard players set $blocksplaced worldtool 0
scoreboard players set #blockschecked worldtool 0

# Summon the drawer
kill 35c1ab68-9d4c-11eb-a8b3-0242ac130003
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["random1","wt_finish_other","wt_no_output","wt_no_reset","worldtool"], UUID:[I; 901884776, -1655959061, -1464663486, -1408040957]}
data modify entity 35c1ab68-9d4c-11eb-a8b3-0242ac130003 Tags append from entity @s Tags[]
execute as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 run function worldtool:process_load/load_fill.wtd

#execute at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randompoint,sort=random,limit=1] run clone ~ ~ ~ ~ ~ ~ 0 1 13
# Start
execute as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:processes/random/1
function worldtool:ui_general/anti_feedback_chat_message/load
