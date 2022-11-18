# Called by worldtool:ui/settings/list_plugins/list
# Displays some plugin statistics

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
tellraw @s [{"nbt":"Translation.\"button.back.name\"","storage": "worldtool:storage","color":"yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.back.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/settings/list_plugins/list"}},"\n"]

tellraw @s [{"nbt":"Translation.\"label.plugin_stats.plugins\"","storage": "worldtool:storage"},{"score":{"name":"$plugins","objective": "worldtool","color":"light_purple"}}]
tellraw @s [{"nbt":"Translation.\"label.plugin_stats.general_tool_plugins\"","storage": "worldtool:storage"},{"score":{"name":"$generalToolPlugins","objective": "worldtool","color":"light_purple"}}]
tellraw @s [{"nbt":"Translation.\"label.plugin_stats.brush_tool_plugins\"","storage": "worldtool:storage"},{"score":{"name":"$brushToolPlugins","objective": "worldtool","color":"light_purple"}}]
tellraw @s [{"nbt":"Translation.\"label.plugin_stats.shape_tool_plugins\"","storage": "worldtool:storage"},{"score":{"name":"$shapeToolPlugins","objective": "worldtool","color":"light_purple"}}]
tellraw @s [{"nbt":"Translation.\"label.plugin_stats.setting_plugins\"","storage": "worldtool:storage"},{"score":{"name":"$settingPlugins","objective": "worldtool","color":"light_purple"}}]
tellraw @s [{"nbt":"Translation.\"label.plugin_stats.language_plugins\"","storage": "worldtool:storage"},{"score":{"name":"$languagePlugins","objective": "worldtool","color":"light_purple"}}]
tellraw @s [{"nbt":"Translation.\"label.plugin_stats.greenery_plugins\"","storage": "worldtool:storage"},{"score":{"name":"$greeneryPlugins","objective": "worldtool","color":"light_purple"}}]

function worldtool:ui/anti_feedback_chat_message/load
