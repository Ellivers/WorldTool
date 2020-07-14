# Get position of pos1
execute at @s as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:clipboard/get_pos.pos1
# Get position of pos2
execute at @s as @e[type=minecraft:area_effect_cloud,tag=pos2] if score @s wt_ID = @p wt_ID run function worldtool:clipboard/get_pos.pos2

execute as @e[tag=wt_clone_preview_pos1] if score @s wt_ID = @p wt_ID run kill @s
execute as @e[tag=wt_clone_preview_pos2] if score @s wt_ID = @p wt_ID run kill @s

summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_clone_preview_pos1","wt_particles"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_clone_preview_pos2","wt_particles"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=wt_clone_preview_pos1,sort=nearest,limit=1] wt_ID = @s wt_ID
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=wt_clone_preview_pos2,sort=nearest,limit=1] wt_ID = @s wt_ID

execute if score #tempPos1X worldtool > #tempPos2X worldtool run scoreboard players operation #tempDifferenceX worldtool = #tempPos1X worldtool
execute if score #tempPos1Y worldtool > #tempPos2Y worldtool run scoreboard players operation #tempDifferenceY worldtool = #tempPos1Y worldtool
execute if score #tempPos1Z worldtool > #tempPos2Z worldtool run scoreboard players operation #tempDifferenceZ worldtool = #tempPos1Z worldtool

execute if score #tempPos2X worldtool > #tempPos1X worldtool run scoreboard players operation #tempDifferenceX worldtool = #tempPos2X worldtool
execute if score #tempPos2Y worldtool > #tempPos1Y worldtool run scoreboard players operation #tempDifferenceY worldtool = #tempPos2Y worldtool
execute if score #tempPos2Z worldtool > #tempPos1Z worldtool run scoreboard players operation #tempDifferenceZ worldtool = #tempPos2Z worldtool


execute if score #tempPos1X worldtool > #tempPos2X worldtool run scoreboard players operation #tempDifferenceX worldtool -= #tempPos2X worldtool
execute if score #tempPos1Y worldtool > #tempPos2Y worldtool run scoreboard players operation #tempDifferenceY worldtool -= #tempPos2Y worldtool
execute if score #tempPos1Z worldtool > #tempPos2Z worldtool run scoreboard players operation #tempDifferenceZ worldtool -= #tempPos2Z worldtool

execute if score #tempPos2X worldtool > #tempPos1X worldtool run scoreboard players operation #tempDifferenceX worldtool -= #tempPos1X worldtool
execute if score #tempPos2Y worldtool > #tempPos1Y worldtool run scoreboard players operation #tempDifferenceY worldtool -= #tempPos1Y worldtool
execute if score #tempPos2Z worldtool > #tempPos1Z worldtool run scoreboard players operation #tempDifferenceZ worldtool -= #tempPos1Z worldtool

# Set position of preview pos2
execute at @s as @e[type=minecraft:area_effect_cloud,tag=wt_clone_preview_pos2] if score @s wt_ID = @p wt_ID run function worldtool:particles/clone_preview/position/set_pos.prevpos2

function worldtool:particles/clone_preview/position/load1