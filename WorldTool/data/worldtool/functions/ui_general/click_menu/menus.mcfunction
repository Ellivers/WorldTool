scoreboard players operation #ID_temp worldtool = @s wt_ID
scoreboard players set #pos1Found worldtool 0
scoreboard players set #pos2Found worldtool 0
execute as @e[type=minecraft:area_effect_cloud,tag=pos1,tag=worldtool] if score @s wt_ID = #ID_temp worldtool run scoreboard players set #pos1Found worldtool 1
execute as @e[type=minecraft:area_effect_cloud,tag=pos2,tag=worldtool] if score @s wt_ID = #ID_temp worldtool run scoreboard players set #pos2Found worldtool 1
execute if score #pos1Found worldtool matches 1 run tag @s add wt_pos1found
execute if score #pos2Found worldtool matches 1 run tag @s add wt_pos2found

execute if entity @s[tag=wt_pos1found,tag=wt_pos2found] run tellraw @s ["",{"text":"[Use...]  ","color":"green","hoverEvent":{"action":"show_text","value":"Use the tool's various functions"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/check"}},{"text": "[Options...]","color":"blue","hoverEvent": {"action": "show_text","value": "Options for the selected area and WorldTool settings"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/select"}}]
execute unless entity @s[tag=wt_pos1found,tag=wt_pos2found] run tellraw @s {"text": "[Options...]","color":"blue","hoverEvent": {"action": "show_text","value": "Options for the selected area and WorldTool settings"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/select"}}

tag @s remove wt_pos1found
tag @s remove wt_pos2found