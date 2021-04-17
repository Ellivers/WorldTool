function worldtool:ui_general/clear_chat
function worldtool:ui_general/anti_feedback_chat_message/load
loot spawn ~ ~ ~ loot worldtool:generation_tool

execute as @e[type=minecraft:item,sort=nearest,limit=1] run function worldtool:ui_shapes/select/block_selected.air.item

replaceitem entity @s weapon.mainhand minecraft:air
tag @s remove wt_check_block_shge
tag @s remove wt_block_check
scoreboard players set @s wt_drop_coas 1
