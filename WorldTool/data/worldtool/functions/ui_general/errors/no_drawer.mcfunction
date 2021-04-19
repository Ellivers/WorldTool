
scoreboard players set #drawerError worldtool 1
tag @s add wt.drawer_error
tellraw @s ["",{"text": "\n\nError: the drawer entity could not be found. If it is found, the process will continue automatically.\n","color": "red"},{"text": "[Kill processes]","color": "gold","hoverEvent": {"action": "show_text","value": "Cancel the process"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/menus/options/kill_processes"}}]
