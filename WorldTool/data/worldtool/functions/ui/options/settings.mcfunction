function worldtool:ui/clear_chat
tellraw @s ["",{"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/select"}},{"text": "Settings","bold": true,"color":"dark_green"},{"text": "\n\n\n[Maximum blocks per tick...]","color":"green","hoverEvent": {"action": "show_text","value": "Settings for the maximum amount of blocks to process every tick"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/select"}}]

execute if score $reloadMessage worldtool matches 1.. run tellraw @s ["",{"text": "[Reload message: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Display a message every time the world's data has been reloaded"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/reloadmsg_toggle"}},{"text": "Enabled","color":"green","hoverEvent": {"action": "show_text","value": "Display a message every time the world's data has been reloaded"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/reloadmsg_toggle"}},{"text": "]","color":"aqua"}]
execute unless score $reloadMessage worldtool matches 1.. run tellraw @s ["",{"text": "[Reload message: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Display a message every time the world's data has been reloaded"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/reloadmsg_toggle"}},{"text": "Disabled","color":"red","hoverEvent": {"action": "show_text","value": "Display a message every time the world's data has been reloaded"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/reloadmsg_toggle"}},{"text": "]","color":"aqua"}]
execute if score $clearChat worldtool matches 1.. run tellraw @s ["",{"text": "[Clear chat: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Separate menus with large blank spaces"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/clear_chat_toggle"}},{"text": "Enabled","color":"green","hoverEvent": {"action": "show_text","value": "Separate menus with large blank spaces"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/clear_chat_toggle"}},{"text": "]","color":"aqua"}]
execute unless score $clearChat worldtool matches 1.. run tellraw @s ["",{"text": "[Clear chat: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Separate menus with large blank spaces"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/clear_chat_toggle"}},{"text": "Disabled","color":"red","hoverEvent": {"action": "show_text","value": "Separate menus with large blank spaces"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/clear_chat_toggle"}},{"text": "]","color":"aqua"}]
execute if score $forceLoadPositions worldtool matches 1.. run tellraw @s ["",{"text": "[Force load main positions: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Always load chunks corner positions set by players are in.\nThis may impact server performance a bit"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/forceload_toggle"}},{"text": "Enabled","color":"green","hoverEvent": {"action": "show_text","value": "Always load chunks corner positions set by players are in.\nThis may impact server performance a bit"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/forceload_toggle"}},{"text": "]","color":"aqua"}]
execute unless score $forceLoadPositions worldtool matches 1.. run tellraw @s ["",{"text": "[Force load main positions: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Always load chunks corner positions set by players are in.\nThis may impact server performance a bit"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/forceload_toggle"}},{"text": "Disabled","color":"red","hoverEvent": {"action": "show_text","value": "Always load chunks corner positions set by players are in.\nThis may impact server performance a bit"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/forceload_toggle"}},{"text": "]","color":"aqua"}]
execute if score $forceLoadCmdPositions worldtool matches 1.. run tellraw @s ["",{"text": "[Force load command positions: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Always load chunks corner positions set by commands are in.\nThis may impact server performance a bit"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/forceload_cmd_toggle"}},{"text": "Enabled","color":"green","hoverEvent": {"action": "show_text","value": "Always load chunks corner positions set by commands are in.\nThis may impact server performance a bit"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/forceload_cmd_toggle"}},{"text": "]","color":"aqua"}]
execute unless score $forceLoadCmdPositions worldtool matches 1.. run tellraw @s ["",{"text": "[Force load command positions: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Always load chunks corner positions set by commands are in.\nThis may impact server performance a bit"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/forceload_cmd_toggle"}},{"text": "Disabled","color":"red","hoverEvent": {"action": "show_text","value": "Always load chunks corner positions set by commands are in.\nThis may impact server performance a bit"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/forceload_cmd_toggle"}},{"text": "]","color":"aqua"}]
execute if score $progressBar worldtool matches 1.. run tellraw @s ["",{"text": "[Show loading bar: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Display a loading bar for running functions"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/pb_toggle"}},{"text": "Enabled","color":"green","hoverEvent": {"action": "show_text","value": "Display a loading bar for running functions"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/pb_toggle"}},{"text": "]","color":"aqua"}]
execute unless score $progressBar worldtool matches 1.. run tellraw @s ["",{"text": "[Show loading bar: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Display a loading bar for running functions"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/pb_toggle"}},{"text": "Disabled","color":"red","hoverEvent": {"action": "show_text","value": "Display a loading bar for running functions"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/pb_toggle"}},{"text": "]","color":"aqua"}]
execute if score $monitorPerformance worldtool matches 1.. run tellraw @s ["",{"text": "[Monitor performance: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Keeps an eye on the world performance and displays a prompt if it gets too laggy (not compatible with Tickbuster)"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/monperf_toggle"}},{"text": "Enabled","color":"green","hoverEvent": {"action": "show_text","value": "Keeps an eye on the world performance and displays a prompt if it gets too laggy (not compatible with Tickbuster)"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/monperf_toggle"}},{"text": "]","color":"aqua"}]
execute unless score $monitorPerformance worldtool matches 1.. run tellraw @s ["",{"text": "[Monitor performance: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Keeps an eye on the world performance and displays a prompt if it gets too laggy (not compatible with Tickbuster)"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/monperf_toggle"}},{"text": "Disabled","color":"red","hoverEvent": {"action": "show_text","value": "Keeps an eye on the world performance and displays a prompt if it gets too laggy (not compatible with Tickbuster)"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/monperf_toggle"}},{"text": "]","color":"aqua"}]
execute if score $particles worldtool matches 1.. run tellraw @s ["",{"text": "[Particles: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Toggle WorldTool particles\nNOTE: Disabling particles will disable them for all users"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/particles_toggle"}},{"text": "Enabled","color":"green","hoverEvent": {"action": "show_text","value": "Toggle WorldTool particles\nNOTE: Disabling particles will disable them for all users"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/particles_toggle"}},{"text": "]","color":"aqua"}]
execute unless score $particles worldtool matches 1.. run tellraw @s ["",{"text": "[Particles: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Toggle WorldTool particles\nNOTE: Disabling particles will disable them for all users"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/particles_toggle"}},{"text": "Disabled","color":"red","hoverEvent": {"action": "show_text","value": "Toggle WorldTool particles\nNOTE: Disabling particles will disable them for all users"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/particles_toggle"}},{"text": "]","color":"aqua"}]
execute if score $clonePreviewDelay worldtool matches 1.. run tellraw @s ["",{"text": "Clone preview delay: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Change the delay between clone preview updates. Set to 0 to disable clone previews.\nHigher values = less performance impact."}},{"text": "< ","color":"light_purple","bold":true,"hoverEvent": {"action": "show_text","value":"Decrease"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/options/clone_preview_delay_decrease"}},{"color":"green","score": {"name": "$clonePreviewDelay","objective": "worldtool"},"hoverEvent": {"action": "show_text","value": "Change the delay between clone preview updates. Set to 0 to disable clone previews.\nHigher values = less performance impact."}},{"text": " ticks","hoverEvent": {"action": "show_text","value": "Change the delay between clone preview updates. Set to 0 to disable clone previews.\nHigher values = less performance impact."}},{"text": " >","color":"light_purple","bold":true,"hoverEvent": {"action": "show_text","value":"Increase"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/options/clone_preview_delay_increase"}}]
execute unless score $clonePreviewDelay worldtool matches 1.. run tellraw @s ["",{"text": "Clone preview delay: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Change the delay between clone preview updates. Set to 0 to disable clone previews.\nHigher values = less performance impact."}},{"text": "< ","color":"light_purple","bold":true,"hoverEvent": {"action": "show_text","value":"Decrease"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/options/clone_preview_delay_decrease"}},{"text": "Disabled","color":"red","hoverEvent": {"action": "show_text","value": "Change the delay between clone preview updates. Set to 0 to disable clone previews.\nHigher values = less performance impact."}},{"text": " >","color":"light_purple","bold":true,"hoverEvent": {"action": "show_text","value":"Increase"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/options/clone_preview_delay_increase"}}]
execute if score $sizeWarnLimit worldtool matches ..0 run tellraw @s ["",{"text": "Size warning threshold: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Change at what amount of selected blocks a size warning is displayed. Set to 0 to disable the warning."}},{"text": "< ","color":"light_purple","bold":true,"hoverEvent": {"action": "show_text","value":"Decrease"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/options/swl_decrease"}},{"text": "Disabled","color":"red","hoverEvent": {"action": "show_text","value": "Change at what amount of selected blocks a size warning is displayed. Set to 0 to disable the warning."}},{"text": " >","color":"light_purple","bold":true,"hoverEvent": {"action": "show_text","value":"Increase"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/options/swl_increase"}}]
execute unless score $sizeWarnLimit worldtool matches ..0 run tellraw @s ["",{"text": "Size warning threshold: ","color":"aqua","hoverEvent": {"action": "show_text","value": "Change at what amount of selected blocks a size warning is displayed. Set to 0 to disable the warning."}},{"text": "< ","color":"light_purple","bold":true,"hoverEvent": {"action": "show_text","value":"Decrease"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/options/swl_decrease"}},{"color":"green","score":{"name": "$sizeWarnLimit","objective": "worldtool"},"hoverEvent": {"action": "show_text","value": "Change at what amount of selected blocks a size warning is displayed. Set to 0 to disable the warning."}},{"text": " >","color":"light_purple","bold":true,"hoverEvent": {"action": "show_text","value":"Increase"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/options/swl_increase"}}]
tellraw @s {"text": "[Kill processes]","color":"red","hoverEvent": {"action": "show_text","value": "Kill all running processes"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/kill_processes"}}
execute if score $settingAddons worldtool matches 1.. run tellraw @s {"text": "Addon settings:","color":"light_purple"}
function #worldtool:settings

tellraw @s {"text": "\n[Uninstall]","color":"red","hoverEvent": {"action": "show_text","value": "Unistall WorldTool"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/uninstall_prompt"}}
function worldtool:ui/anti_feedback_chat_message/load
