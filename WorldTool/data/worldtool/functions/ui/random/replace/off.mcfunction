scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:ui/kill_wt_check
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s remove replacefill
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s remove replacefill_reversed
function worldtool:ui/random/select
