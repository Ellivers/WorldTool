execute if entity @s[tag=keep] if score @s wt_ID = @p wt_ID run tellraw @p {"text":"Set keep to true","color":"green","italic":true}
execute if entity @s[tag=keep] if score @s wt_ID = @p wt_ID run tellraw @p [{"text": "[Select a block]  ","color": "aqua","hoverEvent":{"action":"show_text","value":"Select a block to fill with"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~ ~ ~ "}},{"text":"[Replace...]  ","color": "light_purple","hoverEvent":{"action":"show_text","value":"Choose a certain block to replace another block"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/select_replace"}},{"text":"[Keep: On]  ","color": "gold","hoverEvent":{"action":"show_text","value":"Don't replace any existing blocks"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/keep_toggle"}},{"text":"[Randomize...]  ","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"Fill with random blocks of your choosing"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/random/select"}},{"text":"[Clone...]  ","color":"blue","hoverEvent":{"action":"show_text","value":"Move/copy a region to another position"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/select_clone"}},{"text":"\n[Measure...]  ","color":"gray","hoverEvent":{"action":"show_text","value":"Measure the amount of blocks in the area, as well as the height, width and depth"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/measure/select"}},{"text":"[More...]  ","color":"dark_green","hoverEvent":{"action":"show_text","value":"Show more functions for this tool"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/more"}},{"text":"[Cancel]  ","color":"reset","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
execute if entity @s[tag=!keep,tag=!wt_destroy] if score @s wt_ID = @p wt_ID run tellraw @p [{"text": "[Select a block]  ","color": "aqua","hoverEvent":{"action":"show_text","value":"Select a block to fill with"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~ ~ ~ "}},{"text":"[Remove]  ","color": "red","hoverEvent":{"action":"show_text","value":"Remove the selected region"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/start_del"}},{"text":"[Replace...]  ","color": "light_purple","hoverEvent":{"action":"show_text","value":"Choose a certain block to replace another block"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/replace/select_replace"}},{"text":"[Keep: Off]  ","color": "gold","hoverEvent":{"action":"show_text","value":"Don't replace any existing blocks"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/keep_toggle"}},{"text":"\n[Destroy: Off]  ","color":"dark_red","hoverEvent":{"action":"show_text","value":"Destroy blocks as if they were mined in survival mode"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/destroy_toggle"}},{"text":"[Randomize...]  ","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"Fill with random blocks of your choosing"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/random/select"}},{"text":"[Clone...]  ","color":"blue","hoverEvent":{"action":"show_text","value":"Move/copy a region to another position"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/select_clone"}},{"text":"[Measure...]  ","color":"gray","hoverEvent":{"action":"show_text","value":"Measure the amount of blocks in the area, as well as the height, width and depth"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/measure/select"}},{"text":"[More...]  ","color":"dark_green","hoverEvent":{"action":"show_text","value":"Show more functions for this tool"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/more"}},{"text":"\n[Cancel]  ","color":"reset","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
execute if entity @s[tag=wt_destroy] if score @s wt_ID = @p wt_ID run tellraw @p [{"text": "[Select a block]  ","color": "aqua","hoverEvent":{"action":"show_text","value":"Select a block to fill with"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~ ~ ~ "}},{"text":"[Remove]  ","color": "red","hoverEvent":{"action":"show_text","value":"Remove the selected region"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/start_del"}},{"text":"[Replace...]  ","color": "light_purple","hoverEvent":{"action":"show_text","value":"Choose a certain block to replace another block"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/replace/select_replace"}},{"text":"[Destroy: On]  ","color":"dark_red","hoverEvent":{"action":"show_text","value":"Destroy blocks as if they were mined in survival mode"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/destroy_toggle"}},{"text":"[Measure...]","color":"gray","hoverEvent":{"action":"show_text","value":"Measure the amount of blocks in the area, as well as the height, width and depth"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/measure/select"}},{"text":"\n[Cancel]","color":"reset","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
function worldtool:ui/pos1_removetags