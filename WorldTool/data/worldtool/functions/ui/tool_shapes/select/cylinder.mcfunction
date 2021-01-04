loot spawn ~ ~ ~ loot worldtool:generation_tool
replaceitem entity @s weapon.mainhand minecraft:air
data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{SelectedShape:"Cylinder"}},PickupDelay:0s}
scoreboard players set @s wt_drop_coas 1
function worldtool:ui/anti_feedback_chat_message/load
