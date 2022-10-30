# Called by worldtool:ui_general/options/menu
# Menu for setting the language

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
function worldtool:ui/settings/back_button

tellraw @s [{"nbt":"Translation.\"info.languages\"","storage": "worldtool:storage","color": "aqua","bold": true},"\n\n"]

execute if data storage worldtool:storage {Language:"worldtool:en_us"} run tellraw @s {"text":"[English (US)]","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.settings.selected_language.description\"","storage": "worldtool:storage"}}}
execute unless data storage worldtool:storage {Language:"worldtool:en_us"} run tellraw @s {"text":"[English (US)]","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.settings.select_language.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/language/set/en_us"}}

function #worldtool:addon/addon_languages

execute if score $reloadLanguage worldtool matches 1 run tellraw @s ["\n",{"nbt":"Translation.\"button.settings.language.reload.on\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.settings.language.reload.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/language/set/reload_toggle"}}]
execute unless score $reloadLanguage worldtool matches 1 run tellraw @s ["\n",{"nbt":"Translation.\"button.settings.language.reload.off\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.settings.language.reload.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/language/set/reload_toggle"}}]
function worldtool:ui/close_button

function worldtool:ui/anti_feedback_chat_message/load
