execute if entity @s[tag=keep] run tellraw @p {"text":"Keep is on","color":"green","italic":true}

execute if entity @s[tag=!keep,tag=!replacefill,tag=!replacefill_reversed] run tellraw @p ["",{"text":"[Run]  ","color":"gray","hoverEvent":{"action":"show_text","value":"Select a source area to be able to run this function"}},{"text": "[Select new source...]  ","color": "gold","hoverEvent":{"action":"show_text","value":"Select a new source of blocks for the random palette"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/random/give"}},{"text":"[Replace: Off...]  ","color": "light_purple","hoverEvent":{"action":"show_text","value":"Choose a certain block to replace another block"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/random/replace/select_replace"}},{"text":"[Keep: Off]  ","color": "green","hoverEvent":{"action":"show_text","value":"Don't replace any existing blocks"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/random/set_keep"}},{"text":"\n[Cancel]  ","color":"white","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
execute if entity @s[tag=keep,tag=!replacefill,tag=!replacefill_reversed] run tellraw @p ["",{"text":"[Run]  ","color":"gray","hoverEvent":{"action":"show_text","value":"Select a source area to be able to run this function"}},{"text": "[Select new source...]  ","color": "gold","hoverEvent":{"action":"show_text","value":"Select a new source of blocks for the random palette"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/random/give"}},{"text":"[Replace: Off...]  ","color": "gray","hoverEvent":{"action":"show_text","value":"Replace cannot be selected because Keep is on"}},{"text":"[Keep: On]  ","color": "green","hoverEvent":{"action":"show_text","value":"Don't replace any existing blocks"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/random/set_keep"}},{"text":"\n[Cancel]  ","color":"white","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]

execute if entity @s[tag=!keep] unless entity @s[tag=!replacefill,tag=!replacefill_reversed] run tellraw @p ["",{"text":"[Run]  ","color":"gray","hoverEvent":{"action":"show_text","value":"Select a source area to be able to run this function"}},{"text": "[Select new source...]  ","color": "gold","hoverEvent":{"action":"show_text","value":"Select a new source of blocks for the random palette"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/random/give"}},{"text":"[Replace: On]  ","color": "light_purple","hoverEvent":{"action":"show_text","value":"Choose a certain block to replace another block"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/random/replace/off"}},{"text":"[Keep: Off]  ","color": "green","hoverEvent":{"action":"show_text","value":"Don't replace any existing blocks"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/random/set_keep"}},{"text":"\n[Cancel]  ","color":"white","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
execute if entity @s[tag=keep] unless entity @s[tag=!replacefill,tag=!replacefill_reversed] run tellraw @p ["",{"text":"[Run]  ","color":"gray","hoverEvent":{"action":"show_text","value":"Select a source area to be able to run this function"}},{"text": "[Select new source...]  ","color": "gold","hoverEvent":{"action":"show_text","value":"Select a new source of blocks for the random palette"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/random/give"}},{"text":"[Replace: On]  ","color": "light_purple","hoverEvent":{"action":"show_text","value":"Choose a certain block to replace another block"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/random/replace/off"}},{"text":"[Keep: On]  ","color": "green","hoverEvent":{"action":"show_text","value":"Don't replace any existing blocks"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/random/set_keep"}},{"text":"\n[Cancel]  ","color":"white","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]