# Called by worldtool:ui_general/page1 and worldtool:ui_general/page2
# Displays a Keep button

tellraw @s[tag=!wt.keep] [{"nbt":"Translation.\"button.keep.off\"","storage": "worldtool:storage","color": "#0aad02","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.keep.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/keep/toggle"}},"\n"]
tellraw @s[tag=wt.keep] [{"nbt":"Translation.\"button.keep.on\"","storage": "worldtool:storage","color": "#0aad02","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.keep.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/keep/toggle"}},"\n"]
