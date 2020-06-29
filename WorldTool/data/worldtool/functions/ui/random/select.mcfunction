execute as @e[type=minecraft:area_effect_cloud,tag=randomcorner1] if score @s wt_ID = @p wt_ID as @e[type=minecraft:area_effect_cloud,tag=randomcorner2] if score @s wt_ID = @p wt_ID run tag @p add randomizing

tag @s[predicate=worldtool:tool_states/4] add random_1
tag @s[predicate=worldtool:tool_states/5] add random_2
clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:4b}
clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:5b}
execute unless entity @s[tag=!random_1,tag=!random_2] run give @s carrot_on_a_stick{worldTool:1b,Type:1b,Unbreakable:1b,Enchantments:[{}],display:{Name:'{"text":"Set position 1","italic":false}'}}

tag @s remove random_1
tag @s remove random_2
tag @s remove placing_fill
tag @s remove rnd_replacingfill1

execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s remove random1
tag @s add backbuttonplzthx
function worldtool:ui/clear_chat

execute as @e[type=minecraft:area_effect_cloud,tag=randomcorner1] if score @s wt_ID = @p wt_ID run tag @s add detected
execute as @e[type=minecraft:area_effect_cloud,tag=randomcorner2] if score @s wt_ID = @p wt_ID run tag @s add detected

execute if entity @s[tag=randomizing] as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/random/select.pos1_1
execute if entity @s[tag=!randomizing] as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/random/select.pos1_2

tag @s remove randomizing
execute as @e[type=minecraft:area_effect_cloud,tag=randomcorner1] if score @s wt_ID = @p wt_ID run tag @s remove detected
execute as @e[type=minecraft:area_effect_cloud,tag=randomcorner2] if score @s wt_ID = @p wt_ID run tag @s remove detected

function worldtool:ui/anti_feedback_chat_message/load