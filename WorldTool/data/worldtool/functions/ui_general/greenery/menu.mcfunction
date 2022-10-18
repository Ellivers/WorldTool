# Called by worldtool:ui_general/page2
# Displays the greenery menu

function worldtool:ui/clear_chat
tag @s add wt.menu.greenery
tag @s add wt.allow_input

function worldtool:ui_general/back_button

tellraw @s ["",{"nbt":"Translation.\"label.greenery.rate\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.greenery.rate.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt": "Translation.\"button.greenery.rate.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/greenery/settings/rate_decrease"}},{"score":{"name": "@s","objective": "wt.greenery_rate"},"color": "gold"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt": "Translation.\"button.greenery.rate.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/greenery/settings/rate_increase"}},"  ",{"nbt":"Translation.\"button.set_value.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.set_value.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon item ~ ~ ~ {Tags:[worldtool,wt.selected_data],PickupDelay:32767s,Item:{id:\"minecraft:stick\",Count:1b,tag:{WorldTool:{ Rate:50 }}}}"}}]

function worldtool:ui/close_button

function worldtool:ui/anti_feedback_chat_message/load
