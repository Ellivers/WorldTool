# Called by various functions
# Displays a button that, when pressed, goes back from a menu that prompts the user to select a position in the world

tellraw @s [{"nbt":"Translation.\"button.back.name\"","storage": "worldtool:storage","color":"yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.back.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_general/back/from_inworld_select"}},"\n"]
