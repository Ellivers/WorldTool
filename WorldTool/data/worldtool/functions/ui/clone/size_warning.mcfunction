function worldtool:ui/clear_chat
tag @s add wt_waiting_in_menu
tellraw @s [{"text": "WARNING\nThe selected area is very large. ","color":"gold"},{"score": {"name": "$blocksplaced","objective": "worldtool"}},{"text": " blocks, to be precise. \nThis will likely cause a lot of lag.\nDo you want to continue anyway?"},{"text": "\n\n[⬅Back]  ","color":"green","bold": true,"hoverEvent": {"action": "show_text","value": "Go back to the clone menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/clone/select_clone"}},{"text": "[Continue]","color":"light_purple","hoverEvent": {"action": "show_text","value": "Continue"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/clone/start.check3"}}]
function worldtool:ui/anti_feedback_chat_message/load
