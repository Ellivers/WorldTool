tag @s add in_menu
tag @s add placing_fill

scoreboard players set @s rotX 0
scoreboard players set @s rotY 0
scoreboard players set @s rotZ 0

execute as @e[type=minecraft:area_effect_cloud,tag=show_rot] if score @s wt_ID = @p wt_ID run kill @s

function worldtool:ui/clear_chat
tellraw @s[tag=wt_outline_selection] ["",{"text":"[Outline selection: On]","color":"dark_purple","hoverEvent":{"action":"show_text","value":"Turn off the selection marker"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/outline/off/main"}},"                                                 ",{"text": "[?]\n","color":"aqua","hoverEvent": {"action":"show_text","value":"Don't know what to do?"},"clickEvent": {"action":"open_url","value": "https://docs.google.com/document/d/1TSxtvy8hIcM4l1fHgRSbBUVkaNZ8twtr9cFbED7ynjw/edit?usp=sharing"}}]
tellraw @s[tag=!wt_outline_selection] ["",{"text":"[Outline selection: Off]","color":"dark_purple","hoverEvent":{"action":"show_text","value":"Highlight the selected area while in the menu"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/outline/on"}},"                                                ",{"text": "[?]\n","color":"aqua","hoverEvent": {"action":"show_text","value":"Don't know what to do?"},"clickEvent": {"action":"open_url","value": "https://docs.google.com/document/d/1TSxtvy8hIcM4l1fHgRSbBUVkaNZ8twtr9cFbED7ynjw/edit?usp=sharing"}}]

execute if entity @s[tag=wt_outline_selection] run function worldtool:ui/outline/load1
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/select.pos1
execute as @e[type=minecraft:area_effect_cloud,tag=randompoint,tag=dostuff] if score @s wt_ID = @p wt_ID run tag @s remove dostuff
function worldtool:ui/player_removetags

function worldtool:ui/summon_check_block/primary

execute if entity @e[tag=wt_outline_selection] if score $particles worldtool matches ..0 run tellraw @s [{"text": "\nCouldn't display outlining particles, as particles are disabled. ","color":"red"},{"text": "[Enable]","color":"white","hoverEvent": {"action": "show_text","value": "Enable WorldTool particles"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/options/particles_toggle"}}]

function worldtool:ui/anti_feedback_chat_message/load