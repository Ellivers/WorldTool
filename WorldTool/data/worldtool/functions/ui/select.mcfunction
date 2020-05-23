tag @s add in_menu
tag @s add placing_fill

scoreboard players set @s rotX 0
scoreboard players set @s rotY 0
scoreboard players set @s rotZ 0

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
tellraw @s[tag=wt_outline_selection] ["",{"text":"[Outline selection: On]","color":"dark_purple","hoverEvent":{"action":"show_text","value":"Turn off the selection marker"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/outline/off/main"}},"                                                 ",{"text": "[?]\n","color":"aqua","hoverEvent": {"action":"show_text","value":"Don't know what to do?"},"clickEvent": {"action":"open_url","value": "https://docs.google.com/document/d/1TSxtvy8hIcM4l1fHgRSbBUVkaNZ8twtr9cFbED7ynjw/edit?usp=sharing"}}]
tellraw @s[tag=!wt_outline_selection] ["",{"text":"[Outline selection: Off]","color":"dark_purple","hoverEvent":{"action":"show_text","value":"Highlight the selected area while in the menu"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/outline/on"}},"                                                ",{"text": "[?]\n","color":"aqua","hoverEvent": {"action":"show_text","value":"Don't know what to do?"},"clickEvent": {"action":"open_url","value": "https://docs.google.com/document/d/1TSxtvy8hIcM4l1fHgRSbBUVkaNZ8twtr9cFbED7ynjw/edit?usp=sharing"}}]

execute if entity @s[tag=wt_outline_selection] run function worldtool:ui/outline/load1
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/select.pos1
execute as @e[type=minecraft:area_effect_cloud,tag=randompoint,tag=dostuff] if score @s wt_ID = @p wt_ID run tag @s remove dostuff
tag @s remove grabbing_block
tag @s remove randomizing
tag @s remove placing_filtered
tag @s remove hollowing
tag @s remove checkered_select

function worldtool:ui/summon_check_block/1
function worldtool:ui/anti_feedback_chat_message/load