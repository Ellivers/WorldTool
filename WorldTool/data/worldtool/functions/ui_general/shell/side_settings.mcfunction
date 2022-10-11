# Called by worldtool:ui_general/shell/menu
# Settings for the area's sides (which includes ceilings and floors)

function worldtool:ui/clear_chat
function worldtool:ui/back_button
tag @s add wt.menu.shell.side_settings

function #rx.playerdb:api/v2/get/self

execute store result score #temp worldtool run data get storage rx.playerdb:io player.data.WorldTool.ShellSideSize
execute if score #temp worldtool matches ..0 run scoreboard players set #temp worldtool 1

execute if score $playerdbAvailable worldtool matches 1 run tellraw @s [{"nbt":"Translation.\"label.shell.side_size\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shell.side_size.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.shell.side_size.decrease.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/shell/side_settings/size_decrease"}},{"score":{"name": "#temp","objective": "worldtool"}},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.shell.side_size.increase.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/shell/side_settings/size_increase"}},"\n"]

tellraw @s[tag=!wt.shell.side.up,tag=!wt.shell.side.down] [{"nbt":"Translation.\"button.shell.side.up.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.up.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/up_toggle"}}," ",{"nbt":"Translation.\"button.shell.side.down.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.down.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/down_toggle"}}]
tellraw @s[tag=wt.shell.side.up,tag=wt.shell.side.down] [{"nbt":"Translation.\"button.shell.side.up.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.up.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/up_toggle"}}," ",{"nbt":"Translation.\"button.shell.side.down.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.down.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/down_toggle"}}]
tellraw @s[tag=!wt.shell.side.up,tag=wt.shell.side.down] [{"nbt":"Translation.\"button.shell.side.up.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.up.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/up_toggle"}}," ",{"nbt":"Translation.\"button.shell.side.down.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.down.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/down_toggle"}}]
tellraw @s[tag=wt.shell.side.up,tag=!wt.shell.side.down] [{"nbt":"Translation.\"button.shell.side.up.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.up.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/up_toggle"}}," ",{"nbt":"Translation.\"button.shell.side.down.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.down.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/down_toggle"}}]

tellraw @s[tag=!wt.shell.side.north,tag=!wt.shell.side.south] [{"nbt":"Translation.\"button.shell.side.north.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.north.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/north_toggle"}}," ",{"nbt":"Translation.\"button.shell.side.south.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.south.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/south_toggle"}}]
tellraw @s[tag=wt.shell.side.north,tag=wt.shell.side.south] [{"nbt":"Translation.\"button.shell.side.north.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.north.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/north_toggle"}}," ",{"nbt":"Translation.\"button.shell.side.south.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.south.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/south_toggle"}}]
tellraw @s[tag=!wt.shell.side.north,tag=wt.shell.side.south] [{"nbt":"Translation.\"button.shell.side.north.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.north.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/north_toggle"}}," ",{"nbt":"Translation.\"button.shell.side.south.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.south.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/south_toggle"}}]
tellraw @s[tag=wt.shell.side.north,tag=!wt.shell.side.south] [{"nbt":"Translation.\"button.shell.side.north.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.north.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/north_toggle"}}," ",{"nbt":"Translation.\"button.shell.side.south.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.south.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/south_toggle"}}]

tellraw @s[tag=!wt.shell.side.east,tag=!wt.shell.side.west] [{"nbt":"Translation.\"button.shell.side.east.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.east.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/east_toggle"}}," ",{"nbt":"Translation.\"button.shell.side.west.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.west.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/west_toggle"}}]
tellraw @s[tag=wt.shell.side.east,tag=wt.shell.side.west] [{"nbt":"Translation.\"button.shell.side.east.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.east.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/east_toggle"}}," ",{"nbt":"Translation.\"button.shell.side.west.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.west.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/west_toggle"}}]
tellraw @s[tag=!wt.shell.side.east,tag=wt.shell.side.west] [{"nbt":"Translation.\"button.shell.side.east.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.east.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/east_toggle"}}," ",{"nbt":"Translation.\"button.shell.side.west.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.west.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/west_toggle"}}]
tellraw @s[tag=wt.shell.side.east,tag=!wt.shell.side.west] [{"nbt":"Translation.\"button.shell.side.east.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.east.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/east_toggle"}}," ",{"nbt":"Translation.\"button.shell.side.west.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.side.west.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/side_settings/west_toggle"}}]

function worldtool:ui/anti_feedback_chat_message/load
