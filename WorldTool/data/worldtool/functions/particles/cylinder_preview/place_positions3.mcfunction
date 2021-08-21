# Called by worldtool:particles/cylinder_preview/place_positions2
# Makes all the positions face each other, to be able to raycast w/ particles

tp @s[tag=3] ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=2,tag=wt_cylinderprev_select,limit=1]
tp @s[tag=1] ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=3,tag=wt_cylinderprev_select,limit=1]
tp @s[tag=2] ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=4,tag=wt_cylinderprev_select,limit=1]
tp @s[tag=4] ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=1,tag=wt_cylinderprev_select,limit=1]

tp @s[tag=7] ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=6,tag=wt_cylinderprev_select,limit=1]
tp @s[tag=5] ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=7,tag=wt_cylinderprev_select,limit=1]
tp @s[tag=6] ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=8,tag=wt_cylinderprev_select,limit=1]
tp @s[tag=8] ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_cylinder_preview,tag=5,tag=wt_cylinderprev_select,limit=1]
