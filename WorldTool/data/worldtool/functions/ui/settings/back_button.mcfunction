# Called by worldtool:ui/settings/blocks_per_tick/menu and worldtool:ui/settings/language/menu
# Displays a back button to the settings menu

tellraw @s [{"nbt":"Translation.\"button.back.name\"","storage": "worldtool:storage","color":"yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.back.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/settings/menu"}},"\n"]
