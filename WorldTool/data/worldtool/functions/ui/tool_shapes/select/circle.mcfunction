loot spawn ~ ~ ~ loot worldtool:generation_tool
item replace entity @s weapon.mainhand with minecraft:air
data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{SelectedShape:"Circle"}},PickupDelay:0s}
scoreboard players set @s wt_drop_coas 1
function worldtool:ui/anti_feedback_chat_message/load
