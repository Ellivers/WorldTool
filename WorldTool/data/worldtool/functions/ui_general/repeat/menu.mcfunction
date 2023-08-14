# Called by worldtool:ui_general/repeat/load
# Displays the repeat menu

function worldtool:ui/clear_chat
tag @s add wt.menu.repeat
execute if score $keepMenuOptions worldtool matches 1 run tag @s add wt.visited_menu.repeat
tag @s add wt.allow_input

scoreboard players set #temp worldtool 1
execute if score @s wt.amountX matches 0 if score @s wt.amountY matches 0 if score @s wt.amountZ matches 0 run scoreboard players set #temp worldtool 0
execute if score #temp worldtool matches 1 unless entity @s[tag=!wt.helper_particles.in_menu,tag=!wt.helper_particles.always] run tag @s add wt.particles

function worldtool:ui_general/back_button

tellraw @s [{"nbt":"Translation.\"label.repeat.amount.x\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.repeat.amount.x.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/repeat/settings/amount_x_decrease"}},{"score":{"name": "@s","objective": "wt.amountX"}},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/repeat/settings/amount_x_increase"}},"  ",{"nbt":"Translation.\"button.set_value.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.set_value.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon item ~ ~ ~ {Tags:[worldtool,wt.selected_data],PickupDelay:32767s,Item:{id:\"minecraft:stick\",Count:1b,tag:{WorldTool:{ AmountX:0 }}}}"}}]
tellraw @s [{"nbt":"Translation.\"label.repeat.amount.y\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.repeat.amount.y.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/repeat/settings/amount_y_decrease"}},{"score":{"name": "@s","objective": "wt.amountY"}},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/repeat/settings/amount_y_increase"}},"  ",{"nbt":"Translation.\"button.set_value.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.set_value.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon item ~ ~ ~ {Tags:[worldtool,wt.selected_data],PickupDelay:32767s,Item:{id:\"minecraft:stick\",Count:1b,tag:{WorldTool:{ AmountY:0 }}}}"}}]
tellraw @s [{"nbt":"Translation.\"label.repeat.amount.z\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.repeat.amount.z.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/repeat/settings/amount_z_decrease"}},{"score":{"name": "@s","objective": "wt.amountZ"}},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/repeat/settings/amount_z_increase"}},"  ",{"nbt":"Translation.\"button.set_value.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.set_value.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon item ~ ~ ~ {Tags:[worldtool,wt.selected_data],PickupDelay:32767s,Item:{id:\"minecraft:stick\",Count:1b,tag:{WorldTool:{ AmountZ:0 }}}}"}}]
tellraw @s [{"nbt":"Translation.\"label.repeat.spacing\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.repeat.spacing.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/repeat/settings/spacing_decrease"}},{"score":{"name": "@s","objective": "wt.size"}},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/repeat/settings/spacing_increase"}},"  ",{"nbt":"Translation.\"button.set_value.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.set_value.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon item ~ ~ ~ {Tags:[worldtool,wt.selected_data],PickupDelay:32767s,Item:{id:\"minecraft:stick\",Count:1b,tag:{WorldTool:{ Spacing:0 }}}}"}}]

tellraw @s[tag=!wt.two_block_query.normal,tag=!wt.two_block_query.exclude] ["\n",{"nbt":"Translation.\"button.run.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.repeat.run.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/repeat/start"}}," ",{"nbt":"Translation.\"button.filter.off_more\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.repeat.filter.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/repeat/settings/filter_on"}}]
execute unless entity @s[tag=!wt.two_block_query.normal,tag=!wt.two_block_query.exclude] run tellraw @s ["\n",{"nbt":"Translation.\"button.run.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.repeat.run.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/repeat/start"}}," ",{"nbt":"Translation.\"button.filter.on\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.repeat.filter.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/repeat/settings/filter_off"}}]

function worldtool:ui/close_button

function worldtool:ui/anti_feedback_chat_message/load
