# Called by worldtool:use_tool/raycast/done
# Commands to run when the ray is done

scoreboard players set #temp worldtool 0
execute if entity @s[tag=wt.tool.general.pos1] run scoreboard players set #temp worldtool 1
execute if entity @s[tag=wt.tool.general.pos2] run scoreboard players set #temp worldtool 2
function #worldtool:hooks/use_tool/hold/get_highlight_color

scoreboard players set #temp2 worldtool 0
execute if score #temp worldtool matches 0 if entity @s[tag=!wt.highlight_color.0] run scoreboard players set #temp2 worldtool 1
execute if score #temp worldtool matches 1 if entity @s[tag=!wt.highlight_color.1] run scoreboard players set #temp2 worldtool 1
execute if score #temp worldtool matches 2 if entity @s[tag=!wt.highlight_color.2] run scoreboard players set #temp2 worldtool 1
execute if score #temp2 worldtool matches 1 run function worldtool:use_tool/hold/ray_hit/change_color_tags

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute if entity @s[tag=wt.highlighting_block] as @e[type=minecraft:shulker,tag=worldtool,tag=wt.highlight_entity] if score @s wt.ID = #ID_temp worldtool run function worldtool:use_tool/hold/ray_hit/tp
execute if entity @s[tag=!wt.highlighting_block] run function worldtool:use_tool/hold/ray_hit/summon
