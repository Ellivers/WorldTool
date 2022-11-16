# Called by worldtool:ui_general/smooth/menu
# Menu for adjusting smoothing settings

function worldtool:ui/clear_chat
tag @s add wt.menu.smooth.settings
tag @s add wt.allow_input

function worldtool:ui/back_button

tellraw @s [{"nbt":"Translation.\"label.smooth.edge_detection_limit\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.smooth.edge_detection_limit.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/smooth/settings/edge_detection_limit_decrease"}},{"score":{"name": "@s","objective": "wt.size"}},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/smooth/settings/edge_detection_limit_increase"}},"  ",{"nbt":"Translation.\"button.set_value.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.set_value.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon item ~ ~ ~ {Tags:[worldtool,wt.selected_data],PickupDelay:32767s,Item:{id:\"minecraft:stick\",Count:1b,tag:{WorldTool:{ EdgeDetectionLimit:20 }}}}"}},"\n"]

tellraw @s[tag=!wt.smooth.direction.up,tag=!wt.smooth.direction.down] [{"nbt":"Translation.\"button.direction.up.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.up.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/up_toggle"}}," ",{"nbt":"Translation.\"button.direction.down.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.down.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/down_toggle"}}]
tellraw @s[tag=wt.smooth.direction.up,tag=wt.smooth.direction.down] [{"nbt":"Translation.\"button.direction.up.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.up.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/up_toggle"}}," ",{"nbt":"Translation.\"button.direction.down.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.down.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/down_toggle"}}]
tellraw @s[tag=!wt.smooth.direction.up,tag=wt.smooth.direction.down] [{"nbt":"Translation.\"button.direction.up.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.up.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/up_toggle"}}," ",{"nbt":"Translation.\"button.direction.down.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.down.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/down_toggle"}}]
tellraw @s[tag=wt.smooth.direction.up,tag=!wt.smooth.direction.down] [{"nbt":"Translation.\"button.direction.up.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.up.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/up_toggle"}}," ",{"nbt":"Translation.\"button.direction.down.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.down.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/down_toggle"}}]

tellraw @s[tag=!wt.smooth.direction.north,tag=!wt.smooth.direction.south] [{"nbt":"Translation.\"button.direction.north.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.north.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/north_toggle"}}," ",{"nbt":"Translation.\"button.direction.south.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.south.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/south_toggle"}}]
tellraw @s[tag=wt.smooth.direction.north,tag=wt.smooth.direction.south] [{"nbt":"Translation.\"button.direction.north.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.north.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/north_toggle"}}," ",{"nbt":"Translation.\"button.direction.south.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.south.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/south_toggle"}}]
tellraw @s[tag=!wt.smooth.direction.north,tag=wt.smooth.direction.south] [{"nbt":"Translation.\"button.direction.north.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.north.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/north_toggle"}}," ",{"nbt":"Translation.\"button.direction.south.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.south.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/south_toggle"}}]
tellraw @s[tag=wt.smooth.direction.north,tag=!wt.smooth.direction.south] [{"nbt":"Translation.\"button.direction.north.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.north.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/north_toggle"}}," ",{"nbt":"Translation.\"button.direction.south.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.south.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/south_toggle"}}]

tellraw @s[tag=!wt.smooth.direction.east,tag=!wt.smooth.direction.west] [{"nbt":"Translation.\"button.direction.east.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.east.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/east_toggle"}}," ",{"nbt":"Translation.\"button.direction.west.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.west.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/west_toggle"}}]
tellraw @s[tag=wt.smooth.direction.east,tag=wt.smooth.direction.west] [{"nbt":"Translation.\"button.direction.east.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.east.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/east_toggle"}}," ",{"nbt":"Translation.\"button.direction.west.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.west.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/west_toggle"}}]
tellraw @s[tag=!wt.smooth.direction.east,tag=wt.smooth.direction.west] [{"nbt":"Translation.\"button.direction.east.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.east.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/east_toggle"}}," ",{"nbt":"Translation.\"button.direction.west.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.west.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/west_toggle"}}]
tellraw @s[tag=wt.smooth.direction.east,tag=!wt.smooth.direction.west] [{"nbt":"Translation.\"button.direction.east.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.east.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/east_toggle"}}," ",{"nbt":"Translation.\"button.direction.west.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.direction.west.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/west_toggle"}}]

function worldtool:ui/anti_feedback_chat_message/load
