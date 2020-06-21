execute as @e[type=minecraft:area_effect_cloud,tag=clipboard_marker2] if score @s wt_ID = @p wt_ID run kill @s

# Get position of pos1
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:clipboard/get_pos.pos1
# Get position of pos2
execute as @e[type=minecraft:area_effect_cloud,tag=pos2] if score @s wt_ID = @p wt_ID run function worldtool:clipboard/get_pos.pos2

execute unless entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_drawer","ticking"]}

# Spawn and teleport the clipboard's pos1 depending on the other scores
execute as @e[type=minecraft:area_effect_cloud,tag=clipboard_marker1] if score @s wt_ID = @p wt_ID at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["clipboard_pos1","placing","clonepos"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=clipboard_pos1,tag=placing,limit=1] wt_ID = @s wt_ID
tag @e[type=minecraft:area_effect_cloud,tag=clipboard_pos1,tag=placing,limit=1] remove placing

scoreboard players operation #tempDifferenceX worldtool = #tempPos2X worldtool
scoreboard players operation #tempDifferenceY worldtool = #tempPos2Y worldtool
scoreboard players operation #tempDifferenceZ worldtool = #tempPos2Z worldtool

scoreboard players operation #tempDifferenceX worldtool -= #tempPos1X worldtool
scoreboard players operation #tempDifferenceY worldtool -= #tempPos1Y worldtool
scoreboard players operation #tempDifferenceZ worldtool -= #tempPos1Z worldtool

execute as @e[type=minecraft:area_effect_cloud,tag=clipboard_pos1] if score @s wt_ID = @p wt_ID run function worldtool:clipboard/line_up.pos1

execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/pos1_removetags
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add cloning_wt
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add no_output
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID at @s run function worldtool:load_function/load_fill