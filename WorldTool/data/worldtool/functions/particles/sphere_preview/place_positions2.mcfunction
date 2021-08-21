# Called by worldtool:particles/sphere_preview/place_positions
# Makes all the positions face each other, to be able to raycast w/ particles

tp @s[tag=5] ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=2,tag=wt_sphereprev_select,limit=1]
tp @s[tag=1] ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=5,tag=wt_sphereprev_select,limit=1]
tp @s[tag=2] ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=6,tag=wt_sphereprev_select,limit=1]
tp @s[tag=6] ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_sphere_preview,tag=1,tag=wt_sphereprev_select,limit=1]
