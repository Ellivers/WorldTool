# Called by worldtool:particles/circle_preview/place_positions
# Makes all the positions face each other, to be able to raycast w/ particles

tp @s[tag=3] ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_circle_preview,tag=2,tag=wt_circleprev_select,limit=1]
tp @s[tag=1] ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_circle_preview,tag=3,tag=wt_circleprev_select,limit=1]
tp @s[tag=2] ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_circle_preview,tag=4,tag=wt_circleprev_select,limit=1]
tp @s[tag=4] ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_circle_preview,tag=1,tag=wt_circleprev_select,limit=1]
