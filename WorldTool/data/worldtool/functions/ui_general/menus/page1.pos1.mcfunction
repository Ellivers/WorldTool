# The main general tool menu, displayed as the pos1 entity

execute if entity @s[tag=keep] run tellraw @p {"text":"Keep is on","color":"green","italic":true}

execute if entity @s[tag=keep] run tellraw @p ["",{"text": "[Select a block]  ","color": "aqua","hoverEvent":{"action":"show_text","value":"Select a block to fill with"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run setblock ~1 ~ ~ "}},{"text":"[Remove]  ","color": "gray","hoverEvent":{"action":"show_text","value":"Remove cannot be selected because Keep is on"}},{"text": "[Pick block...]  ","color": "green","hoverEvent": {"action": "show_text","value": "Choose an existing block to use"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/pick_block/pick_block"}},{"text":"\n[Replace...]  ","color": "gray","hoverEvent":{"action":"show_text","value":"Replace cannot be selected because Keep is on"}},{"text":"[Keep: On]  ","color": "gold","hoverEvent":{"action":"show_text","value":"Don't replace any existing blocks"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui_general/keep_toggle"}},{"text":"[Hollow...]  ","color": "yellow","hoverEvent":{"action":"show_text","value":"Replace the outer blocks of the selection"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/hollow/select"}},{"text":"[Destroy...]  ","color":"gray","hoverEvent":{"action":"show_text","value":"Destroy cannot be selected because Keep is on"}},{"text":"[Randomize...]  ","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"Fill with random blocks of your choosing"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/randomize/select"}},{"text":"\n[Clone...]  ","color":"blue","hoverEvent":{"action":"show_text","value":"Move/copy a region to another position"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/clone/select_clone"}},{"text":"[Measure...]  ","color":"dark_blue","hoverEvent":{"action":"show_text","value":"Measure the amount of blocks in the area, as well as the height, width and depth"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/measure/select"}},{"text": "\n\nPage: ","color": "dark_green"},"1",{"text":" >","color":"light_purple","bold": true,"hoverEvent":{"action":"show_text","value":"Show the next page"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/page2"}},"     ",{"text":"[Close]","color":"white","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/cancel"}}]
execute if entity @s[tag=!keep] run tellraw @p ["",{"text": "[Select a block]  ","color": "aqua","hoverEvent":{"action":"show_text","value":"Select a block to fill with"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run setblock ~1 ~ ~ "}},{"text":"[Remove]  ","color": "red","hoverEvent":{"action":"show_text","value":"Fill the selected region with air"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/start_fill"}},{"text": "[Pick block...]  ","color": "green","hoverEvent": {"action": "show_text","value": "Choose an existing block to use"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/pick_block/pick_block"}},{"text":"\n[Replace...]  ","color": "light_purple","hoverEvent":{"action":"show_text","value":"Choose a certain block to replace another block"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/replace/select_replace"}},{"text":"[Keep: Off]  ","color": "gold","hoverEvent":{"action":"show_text","value":"Don't replace any existing blocks"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui_general/keep_toggle"}},{"text":"[Hollow...]  ","color": "yellow","hoverEvent":{"action":"show_text","value":"Replace the outer blocks of the selection"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/hollow/select"}},{"text":"[Destroy...]  ","color":"dark_red","hoverEvent":{"action":"show_text","value":"Destroy blocks as if they were mined in survival mode"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/destroy/select"}},{"text":"[Randomize...]  ","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"Fill with random blocks of your choosing"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/randomize/select"}},{"text":"\n[Clone...]  ","color":"blue","hoverEvent":{"action":"show_text","value":"Move/copy a region to another position"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/clone/select_clone"}},{"text":"[Measure...]  ","color":"dark_blue","hoverEvent":{"action":"show_text","value":"Measure the amount of blocks in the area, as well as the height, width and depth"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/measure/select"}},{"text": "\n\nPage: ","color": "dark_green"},"1",{"text":" >","color":"light_purple","bold": true,"hoverEvent":{"action":"show_text","value":"Show the next page"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/page2"}},"     ",{"text":"[Close]","color":"white","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/cancel"}}]
function worldtool:ui_general/pos1_removetags
