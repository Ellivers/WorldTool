# Called by worldtool:particles/cone_preview/ray_start
# The position at the top of the cone needs to raycast in 4 different directions

scoreboard players operation #ID_temp worldtool = @s wt_ID

execute at @s as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cone_preview,tag=1] if score @s wt_ID = #ID_temp worldtool run tag @s add wt_coneprev_select
tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cone_preview,tag=1,tag=wt_coneprev_select,limit=1]
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cone_preview,tag=1,tag=wt_coneprev_select,limit=1] remove wt_coneprev_select
execute at @s run function worldtool:particles/cone_preview/raycast2

execute at @s as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cone_preview,tag=2] if score @s wt_ID = #ID_temp worldtool run tag @s add wt_coneprev_select
tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cone_preview,tag=2,tag=wt_coneprev_select,limit=1]
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cone_preview,tag=2,tag=wt_coneprev_select,limit=1] remove wt_coneprev_select
execute at @s run function worldtool:particles/cone_preview/raycast2

execute at @s as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cone_preview,tag=3] if score @s wt_ID = #ID_temp worldtool run tag @s add wt_coneprev_select
tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cone_preview,tag=3,tag=wt_coneprev_select,limit=1]
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cone_preview,tag=3,tag=wt_coneprev_select,limit=1] remove wt_coneprev_select
execute at @s run function worldtool:particles/cone_preview/raycast2

execute at @s as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cone_preview,tag=4] if score @s wt_ID = #ID_temp worldtool run tag @s add wt_coneprev_select
tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cone_preview,tag=4,tag=wt_coneprev_select,limit=1]
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cone_preview,tag=4,tag=wt_coneprev_select,limit=1] remove wt_coneprev_select
execute at @s run function worldtool:particles/cone_preview/raycast2
