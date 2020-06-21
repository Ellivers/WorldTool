execute at @a if score @p wt_ID = @s wt_ID as @p as @e[type=minecraft:area_effect_cloud,tag=randompoint] if score @s wt_ID = @p wt_ID run kill @s

execute store result score $pos1x worldtool run data get entity @s Pos[0]
execute store result score $pos1y worldtool run data get entity @s Pos[1]
execute store result score $pos1z worldtool run data get entity @s Pos[2]
execute unless score $blocksPerTick worldtool matches 2..4000 run scoreboard players set $blocksPerTick worldtool 4000

execute at @a if score @p wt_ID = @s wt_ID as @e[type=minecraft:area_effect_cloud,tag=randomcorner2] if score @s wt_ID = @p wt_ID run function worldtool:load_function/load_random.rndpos2

scoreboard players operation $drawingposY worldtool = $pos1y worldtool
scoreboard players operation $drawingposZ worldtool = $pos1z worldtool
scoreboard players operation $drawingposX worldtool = $pos1x worldtool

scoreboard players set $blocksplaced worldtool 0
scoreboard players set #blockschecked worldtool 0

kill @e[type=minecraft:area_effect_cloud,tag=wt_drawer,sort=nearest,limit=1]
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_drawer","random1"]}
data modify entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer,sort=nearest,limit=1] Tags append from entity @s Tags[]
tag @e[type=minecraft:area_effect_cloud,tag=wt_drawer,sort=nearest,limit=1] remove randomcorner1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=wt_drawer,sort=nearest,limit=1] wt_ID = @s wt_ID

#execute at @e[type=minecraft:area_effect_cloud,tag=randompoint,sort=random,limit=1] run clone ~ ~ ~ ~ ~ ~ 0 1 13
execute as @e[type=minecraft:area_effect_cloud,tag=wt_drawer] if score @s wt_ID = @e[type=minecraft:area_effect_cloud,tag=pos1,sort=nearest,limit=1] wt_ID at @s run function worldtool:random/1
function worldtool:ui/anti_feedback_chat_message/load