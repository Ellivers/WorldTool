# Called by worldtool:ui_general/options/menu and by setting-chaning functions
# Displays the settings menu

function worldtool:ui/clear_chat
function worldtool:ui/back_button

tag @s add wt.menu.settings

tellraw @s [{"nbt":"Translation.\"info.settings\"","storage": "worldtool:storage","color": "green","bold": true},"\n\n"]


execute if score $forceLoadPositions worldtool matches 1.. run tellraw @s [{"nbt":"Translation.\"label.setting.force_load_positions\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.setting.force_load_positions.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/force_load_positions_toggle"}},{"nbt":"Translation.\"button.enabled.name\"","storage": "worldtool:storage","color": "green"}," ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/force_load_positions_reset"}}]
execute unless score $forceLoadPositions worldtool matches 1.. run tellraw @s [{"nbt":"Translation.\"label.setting.force_load_positions\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.setting.force_load_positions.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/force_load_positions_toggle"}},{"nbt":"Translation.\"button.disabled.name\"","storage": "worldtool:storage","color": "red"}," ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/force_load_positions_reset"}}]
execute if score $progressBar worldtool matches 1.. run tellraw @s [{"nbt":"Translation.\"label.setting.progress_bar\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.setting.progress_bar.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/progress_bar_toggle"}},{"nbt":"Translation.\"button.enabled.name\"","storage": "worldtool:storage","color": "green"}," ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/progress_bar_reset"}}]
execute unless score $progressBar worldtool matches 1.. run tellraw @s [{"nbt":"Translation.\"label.setting.progress_bar\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.setting.progress_bar.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/progress_bar_toggle"}},{"nbt":"Translation.\"button.disabled.name\"","storage": "worldtool:storage","color": "red"}," ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/progress_bar_reset"}}]
execute if score $clearChat worldtool matches 1.. run tellraw @s [{"nbt":"Translation.\"label.setting.clear_chat\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.setting.clear_chat.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/clear_chat_toggle"}},{"nbt":"Translation.\"button.enabled.name\"","storage": "worldtool:storage","color": "green"}," ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/clear_chat_reset"}}]
execute unless score $clearChat worldtool matches 1.. run tellraw @s [{"nbt":"Translation.\"label.setting.clear_chat\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.setting.clear_chat.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/clear_chat_toggle"}},{"nbt":"Translation.\"button.disabled.name\"","storage": "worldtool:storage","color": "red"}," ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/clear_chat_reset"}}]
execute if score $playUISounds worldtool matches 1.. run tellraw @s [{"nbt":"Translation.\"label.setting.play_ui_sounds\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.setting.play_ui_sounds.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/play_ui_sounds_toggle"}},{"nbt":"Translation.\"button.enabled.name\"","storage": "worldtool:storage","color": "green"}," ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/play_ui_sounds_reset"}}]
execute unless score $playUISounds worldtool matches 1.. run tellraw @s [{"nbt":"Translation.\"label.setting.play_ui_sounds\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.setting.play_ui_sounds.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/play_ui_sounds_toggle"}},{"nbt":"Translation.\"button.disabled.name\"","storage": "worldtool:storage","color": "red"}," ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/play_ui_sounds_reset"}}]
execute if score $reloadMessage worldtool matches 1.. run tellraw @s [{"nbt":"Translation.\"label.setting.reload_message\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.setting.reload_message.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/reload_message_toggle"}},{"nbt":"Translation.\"button.enabled.name\"","storage": "worldtool:storage","color": "green"}," ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/reload_message_reset"}}]
execute unless score $reloadMessage worldtool matches 1.. run tellraw @s [{"nbt":"Translation.\"label.setting.reload_message\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.setting.reload_message.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/reload_message_toggle"}},{"nbt":"Translation.\"button.disabled.name\"","storage": "worldtool:storage","color": "red"}," ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/reload_message_reset"}}]
execute if score $enableBackups worldtool matches 1.. run tellraw @s [{"nbt":"Translation.\"label.setting.enable_backups\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.setting.enable_backups.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/enable_backups_toggle"}},{"nbt":"Translation.\"button.enabled.name\"","storage": "worldtool:storage","color": "green"}," ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/enable_backups_reset"}}]
execute unless score $enableBackups worldtool matches 1.. run tellraw @s [{"nbt":"Translation.\"label.setting.enable_backups\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.setting.enable_backups.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/enable_backups_toggle"}},{"nbt":"Translation.\"button.disabled.name\"","storage": "worldtool:storage","color": "red"}," ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/enable_backups_reset"}}]
tellraw @s [{"nbt":"Translation.\"label.setting.size_warn_limit\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.setting.size_warn_limit.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/size_warn_limit_decrease"}},{"score":{"name": "$sizeWarnLimit","objective": "worldtool"}},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/size_warn_limit_increase"}}," ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/size_warn_limit_reset"}}]
tellraw @s [{"nbt":"Translation.\"label.setting.log_limit\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.setting.log_limit.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/log_limit_decrease"}},{"score":{"name": "$logLimit","objective": "worldtool"}},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/log_limit_increase"}}," ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/log_limit_reset"}}]
tellraw @s [{"nbt":"Translation.\"label.setting.max_backups\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.setting.max_backups.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/max_backups_decrease"}},{"score":{"name": "$maxBackups","objective": "worldtool"}},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/max_backups_increase"}}," ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/max_backups_reset"}}]

tellraw @s ["\n",{"nbt":"Translation.\"button.reset_all.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset_all.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/settings/settings/reset_all"}}]

execute if score $settingAddons worldtool matches 1.. run tellraw @s ["\n",{"nbt":"Translation.\"label.addon_settings\"","storage": "worldtool:storage","color": "light_purple"},"\n"]

function #worldtool:addon/addon_settings

function worldtool:ui/anti_feedback_chat_message/load
