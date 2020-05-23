execute if entity @s[tag=flower_forest] run tellraw @p {"text":"[Flower forest]","color":"gray","hoverEvent":{"action":"show_text","value":"Grass, tall grass, dandelion, poppy, allium, azure bluet, all tulips, oxeye daisy, cornflower, lily of the valley, lilac, rose bush, peony"}}
execute if entity @s[tag=!flower_forest] run tellraw @p {"text":"[Flower forest]","color":"light_purple","hoverEvent":{"action":"show_text","value":"Grass, tall grass, dandelion, poppy, allium, azure bluet, all tulips, oxeye daisy, cornflower, lily of the valley, lilac, rose bush, peony"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/foliage/select_biome/flower_forest"}}

execute if entity @s[tag=plains] run tellraw @p {"text":"[Plains]","color":"gray","hoverEvent":{"action":"show_text","value":"Grass, tall grass, dandelion, poppy, azure bluet, all tulips, oxeye daisy, cornflower"}}
execute if entity @s[tag=!plains] run tellraw @p {"text":"[Plains]","color":"green","hoverEvent":{"action":"show_text","value":"Grass, tall grass, dandelion, poppy, azure bluet, all tulips, oxeye daisy, cornflower"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/foliage/select_biome/plains"}}

execute if entity @s[tag=sunflower_plains] run tellraw @p {"text":"[Sunflower plains]","color":"gray","hoverEvent":{"action":"show_text","value":"Grass, tall grass, sunflower, dandelion, poppy, azure bluet, all tulips, oxeye daisy, cornflower"}}
execute if entity @s[tag=!sunflower_plains] run tellraw @p {"text":"[Sunflower plains]","color":"green","hoverEvent":{"action":"show_text","value":"Grass, tall grass, sunflower, dandelion, poppy, azure bluet, all tulips, oxeye daisy, cornflower"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/foliage/select_biome/sunflower_plains"}}

execute if entity @s[tag=taiga] run tellraw @p {"text":"[Taiga]","color":"gray","hoverEvent":{"action":"show_text","value":"Grass, fern, large fern, dandelion, poppy, sweet berry bush"}}
execute if entity @s[tag=!taiga] run tellraw @p {"text":"[Taiga]","color":"dark_green","hoverEvent":{"action":"show_text","value":"Grass, fern, large fern, dandelion, poppy, sweet berry bush"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/foliage/select_biome/taiga"}}

execute if entity @s[tag=desert] run tellraw @p {"text":"[Desert]","color":"gray","hoverEvent":{"action":"show_text","value":"Cactus, dead bush"}}
execute if entity @s[tag=!desert] run tellraw @p {"text":"[Desert]","color":"yellow","hoverEvent":{"action":"show_text","value":"Cactus, dead bush"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/foliage/select_biome/desert"}}