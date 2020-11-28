# Called by worldtool:particles/sphere_preview/ray_start
# The positions at the top and bottom of the sphere need to raycast in 4 different directions
# This was my solution...

execute at @s as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=1] if score @s wt_ID = @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,sort=nearest,limit=1] wt_ID run tag @s add wt_sphereprev_select
tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=1,tag=wt_sphereprev_select,limit=1]
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=1,tag=wt_sphereprev_select,limit=1] remove wt_sphereprev_select
execute at @s run function worldtool:particles/sphere_preview/raycast

execute at @s as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=2] if score @s wt_ID = @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,sort=nearest,limit=1] wt_ID run tag @s add wt_sphereprev_select
tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=2,tag=wt_sphereprev_select,limit=1]
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=2,tag=wt_sphereprev_select,limit=1] remove wt_sphereprev_select
execute at @s run function worldtool:particles/sphere_preview/raycast

execute at @s as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=5] if score @s wt_ID = @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,sort=nearest,limit=1] wt_ID run tag @s add wt_sphereprev_select
tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=5,tag=wt_sphereprev_select,limit=1]
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=5,tag=wt_sphereprev_select,limit=1] remove wt_sphereprev_select
execute at @s run function worldtool:particles/sphere_preview/raycast

execute at @s as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=6] if score @s wt_ID = @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,sort=nearest,limit=1] wt_ID run tag @s add wt_sphereprev_select
tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=6,tag=wt_sphereprev_select,limit=1]
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=6,tag=wt_sphereprev_select,limit=1] remove wt_sphereprev_select
execute at @s run function worldtool:particles/sphere_preview/raycast
