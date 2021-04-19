execute if entity @s[tag=!flower_forest,tag=!plains,tag=!taiga,tag=!desert,tag=!sunflower_plains,tag=!underwater] run tag @s add flower_forest

execute if entity @s[tag=wt_replace_greenery] run tellraw @p {"text":"[Replace current greenery: On]\n","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"Replace the plants that are already in the area"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui_general/menus/greenery/toggle_replace"}}
execute if entity @s[tag=!wt_replace_greenery] run tellraw @p {"text":"[Replace current greenery: Off]\n","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"Replace the plants that are already in the area"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui_general/menus/greenery/toggle_replace"}}

execute if entity @s[tag=flower_forest] run tellraw @p [{"text":"[Run]  ","color":"yellow","hoverEvent":{"action":"show_text","value":"Start placing greenery"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/greenery/start"}},{"text":"[Current source biome: Flower forest...]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Change the source biome for greenery"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/greenery/select_biome/select"}}]
execute if entity @s[tag=plains] run tellraw @p [{"text":"[Run]  ","color":"yellow","hoverEvent":{"action":"show_text","value":"Start placing greenery"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/greenery/start"}},{"text":"[Current source biome: Plains...]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Change the source biome for greenery"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/greenery/select_biome/select"}}]
execute if entity @s[tag=taiga] run tellraw @p [{"text":"[Run]  ","color":"yellow","hoverEvent":{"action":"show_text","value":"Start placing greenery"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/greenery/start"}},{"text":"[Current source biome: Taiga...]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Change the source biome for greenery"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/greenery/select_biome/select"}}]
execute if entity @s[tag=desert] run tellraw @p [{"text":"[Run]  ","color":"yellow","hoverEvent":{"action":"show_text","value":"Start placing greenery"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/greenery/start"}},{"text":"[Current source biome: Desert...]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Change the source biome for greenery"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/greenery/select_biome/select"}}]
execute if entity @s[tag=sunflower_plains] run tellraw @p [{"text":"[Run]  ","color":"yellow","hoverEvent":{"action":"show_text","value":"Start placing greenery"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/greenery/start"}},{"text":"[Current source biome: Sunflower plains...]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Change the source biome for greenery"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/greenery/select_biome/select"}}]
execute if entity @s[tag=underwater] run tellraw @p [{"text":"[Run]  ","color":"yellow","hoverEvent":{"action":"show_text","value":"Start placing greenery"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/greenery/start"}},{"text":"[Current source biome: Underwater...]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Change the source biome for greenery"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/greenery/select_biome/select"}}]
function #worldtool:greenery/select

execute if entity @s[tag=!replacefill,tag=!replacefill_reversed] run tellraw @p [{"text":"[Replace: Off...]  ","color":"light_purple","hoverEvent":{"action":"show_text","value":"Select which block(s) to replace.\nNote that only blocks where the plants appear are targeted with this"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/greenery/replace/select"}},{"text":"[Close]","color":"white","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/cancel"}}]
execute unless entity @s[tag=!replacefill,tag=!replacefill_reversed] run tellraw @p [{"text":"[Replace: On]  ","color":"light_purple","hoverEvent":{"action":"show_text","value":"Select which block(s) to replace.\nNote that only blocks where the plants appear are targeted with this"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/greenery/replace/off"}},{"text":"[Close]","color":"white","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/cancel"}}]