function worldtool:ui_general/clear_chat

function worldtool:ui_brush/give_brush.brushes
execute if predicate worldtool:tool_states/all unless data entity @s SelectedItem.tag.Brush run loot spawn ~ ~ ~ loot worldtool:brushes/none

execute as @e[type=minecraft:item,sort=nearest,limit=1] run function worldtool:ui_brush/set/set_block.air.item

scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = #ID_temp worldtool run kill @s
replaceitem entity @s weapon.mainhand minecraft:air

function worldtool:ui_general/anti_feedback_chat_message/load