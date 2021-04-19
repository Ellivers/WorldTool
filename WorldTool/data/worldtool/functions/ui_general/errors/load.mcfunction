
tag @s remove wt_started_function
tellraw @s [{"text": "Error: one or more positions could not be found. Are they in unloaded chunks?\n","color": "red"},{"text": "[Retry]  ","color": "aqua","hoverEvent": {"action": "show_text","value": "Try loading the process again"},"clickEvent": {"action": "run_command","value": "/function worldtool:process_load/load_check"}},{"text": "[Close]","color": "gold","hoverEvent": {"action": "show_text","value": "Close this menu and cancel the process"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/cancel"}}]
