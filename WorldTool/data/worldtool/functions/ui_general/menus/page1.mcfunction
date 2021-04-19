# Called by worldtool:ui_general/check
# The main menu
scoreboard players operation #ID_temp worldtool = @s wt_ID

tag @s add wt_in_menu
tag @s add placing_fill
tag @s remove fun_menu

scoreboard players set @s wt_rotX 0
scoreboard players set @s wt_rotY 0
scoreboard players set @s wt_rotZ 0

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=show_rot] if score @s wt_ID = #ID_temp worldtool run kill @s

function worldtool:ui_general/clear_chat
tellraw @s[tag=wt_outline_selection] ["",{"text":"[Outline selection: On]","color":"dark_purple","hoverEvent":{"action":"show_text","value":"Turn off the selection marker"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/outline/off/main"}},"                                                 ",{"text": "[?]\n","color":"aqua","hoverEvent": {"action":"show_text","value":"Don't know what to do?"},"clickEvent": {"action":"open_url","value": "https://docs.google.com/document/d/1TSxtvy8hIcM4l1fHgRSbBUVkaNZ8twtr9cFbED7ynjw/edit?usp=sharing"}}]
tellraw @s[tag=!wt_outline_selection] ["",{"text":"[Outline selection: Off]","color":"dark_purple","hoverEvent":{"action":"show_text","value":"Highlight the selected area while in the menu"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/outline/on"}},"                                                ",{"text": "[?]\n","color":"aqua","hoverEvent": {"action":"show_text","value":"Don't know what to do?"},"clickEvent": {"action":"open_url","value": "https://docs.google.com/document/d/1TSxtvy8hIcM4l1fHgRSbBUVkaNZ8twtr9cFbED7ynjw/edit?usp=sharing"}}]

execute if entity @s[tag=wt_outline_selection] run function worldtool:ui_general/outline/load1
#execute if entity @s[tag=wt_outline_selection] run schedule function worldtool:particles/main 8t replace
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run function worldtool:ui_general/menus/page1.pos1
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randompoint,tag=dostuff] if score @s wt_ID = #ID_temp worldtool run tag @s remove dostuff
function worldtool:ui_general/player_removetags
function worldtool:ui_general/menus/clone/remove_preview

function worldtool:ui_general/summon_check_block/primary

execute if entity @s[tag=wt_outline_selection] if score $particles worldtool matches ..0 run tellraw @s [{"text": "\nCouldn't display outlining particles, as particles are disabled. ","color":"red"},{"text": "[Enable]","color":"white","hoverEvent": {"action": "show_text","value": "Enable WorldTool particles"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_general/menus/options/particles_toggle"}}]

function worldtool:ui_general/anti_feedback_chat_message/load
