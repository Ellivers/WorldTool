
tag @s remove wt_started_function
tellraw @s [{"text": "Error: one or both positions could not be found. Are they in unloaded chunks?\n","color": "red"},{"text": "[Retry]  ","color": "aqua","hoverEvent": {"action": "show_text","value": "Try loading the process again"},"clickEvent": {"action": "run_command","value": "/function worldtool:load_process/load_check"}},{"text": "[Cancel]","color": "gold","hoverEvent": {"action": "show_text","value": "Close this menu and cancel the process"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/cancel"}}]
