# Called by worldtool:ui_general/options/menu and by setting-changing functions
# Displays the settings menu

execute if entity @s[tag=wt.helper_particles.in_menu] run function worldtool:ui_general/arrange_positions/remove_particles

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
function worldtool:ui/reopen_menu/from_submenu.back_button

tellraw @s {"nbt":"Translation.\"button.settings.language.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.settings.language.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/language/menu"}}
tellraw @s [{"nbt":"Translation.\"button.settings.blocks_per_tick.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.settings.blocks_per_tick.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/page1"}},"\n"]

tag @s[tag=!wt.menu.settings.list.1,tag=!wt.menu.settings.list.2] add wt.menu.settings.list.1
execute if entity @s[tag=wt.menu.settings.list.1] run function worldtool:ui/settings/list1
execute if entity @s[tag=wt.menu.settings.list.2] run function worldtool:ui/settings/list2

execute if score $plugins worldtool matches 1.. run tellraw @s ["\n",{"nbt":"Translation.\"button.available_plugins.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.available_plugins.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/list_plugins/list"}}]
execute if score $settingPlugins worldtool matches 1.. run tellraw @s ["\n",{"nbt":"Translation.\"button.plugin_settings.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.plugin_settings.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/plugin_settings"}}]

tellraw @s ["\n",{"nbt":"Translation.\"button.uninstall.name\"","storage": "worldtool:storage","color": "red","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.uninstall.description\"","storage": "worldtool:storage","color": "red"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/warning/uninstall"}}]

function worldtool:ui/anti_feedback_chat_message/load
