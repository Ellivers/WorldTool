# Called by worldtool:particles/sphere_preview/ray_start
# The positions at the top and bottom of the sphere need to raycast in 4 different directions

scoreboard players operation #ID_temp worldtool = @s wt_ID

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=1] if score @s wt_ID = #ID_temp worldtool run tag @s add wt_sphereprev_select
tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=1,tag=wt_sphereprev_select,limit=1]
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=1,tag=wt_sphereprev_select,limit=1] remove wt_sphereprev_select
execute at @s run function worldtool:particles/sphere_preview/raycast

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=2] if score @s wt_ID = #ID_temp worldtool run tag @s add wt_sphereprev_select
tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=2,tag=wt_sphereprev_select,limit=1]
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=2,tag=wt_sphereprev_select,limit=1] remove wt_sphereprev_select
execute at @s run function worldtool:particles/sphere_preview/raycast

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=5] if score @s wt_ID = #ID_temp worldtool run tag @s add wt_sphereprev_select
tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=5,tag=wt_sphereprev_select,limit=1]
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=5,tag=wt_sphereprev_select,limit=1] remove wt_sphereprev_select
execute at @s run function worldtool:particles/sphere_preview/raycast

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=6] if score @s wt_ID = #ID_temp worldtool run tag @s add wt_sphereprev_select
tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=6,tag=wt_sphereprev_select,limit=1]
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=6,tag=wt_sphereprev_select,limit=1] remove wt_sphereprev_select
execute at @s run function worldtool:particles/sphere_preview/raycast
