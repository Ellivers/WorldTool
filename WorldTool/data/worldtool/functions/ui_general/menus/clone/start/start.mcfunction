kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos]
#function worldtool:ui_general/menus/clone/remove_preview
scoreboard players operation #ID_temp worldtool = @s wt_ID

execute if entity @s[tag=wt_fix_blocks2] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool at @s run tp 35c1ab68-9d4c-11eb-a8b3-0242ac130003 ~ ~ ~

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_start_marker] if score @s wt_ID = #ID_temp worldtool run kill @s
execute if entity @s[tag=wt_fix_blocks] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_clone_start_marker","worldtool"]}
execute if entity @s[tag=wt_fix_blocks] run scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_start_marker,sort=nearest,limit=1] wt_ID = #ID_temp worldtool

execute if entity @s[tag=!wt_fix_blocks2] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["ticking","wt_setting_clone","worldtool"], UUID:[I; 901884776, -1655959061, -1464663486, -1408040957]}

summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["clonepos","worldtool"]}

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool unless entity @s[tag=!filtered,tag=!filtered_reversed] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = #ID_temp worldtool at @s run clone ~-1 1 ~ ~-1 1 ~ 2 1 13 replace move
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:ui_general/kill_wt_check

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_waiting_marker] if score @s wt_ID = #ID_temp worldtool run kill @s

execute if entity @s[tag=wt_fix_blocks2] run scoreboard players set $functionRunning worldtool 0

tag @s remove wt_TempHahaThisIsNeeded
tag @s remove wt_waiting
tag @s[tag=wt_fix_blocks2] add wt_fix_blocks3
tag @s remove wt_fix_blocks2
tag @s[tag=wt_fix_blocks] add wt_fix_blocks2
tag @s remove wt_fix_blocks
tag @s[tag=wt_fix_blocks3] add wt_fix_blocks
tag @s remove wt_fix_blocks3
#tag @s remove wt_in_menu
#tag @s remove wt_clone_preview
function worldtool:process_load/load_check
