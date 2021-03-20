tag @s remove placing_fill
tag @s remove rotating_clone
tag @s add wt_backbuttonplzthx
function worldtool:ui_general/clear_chat
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:armor_stand,tag=show_rot] if score @s wt_ID = #ID_temp worldtool run kill @s
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_waiting_marker] if score @s wt_ID = #ID_temp worldtool run kill @s

tag @s[predicate=worldtool:tool_states/3] add setclonepos
clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:3b}
loot give @s[tag=setclonepos] loot worldtool:general_tool
tag @s remove setclonepos

tag @s[tag=!atsetpos,tag=wt_outline_selection] add wt_clone_preview
execute if score $clonePreviewDelay worldtool matches 5.. if entity @s[tag=!atsetpos,tag=wt_outline_selection] run function worldtool:particles/clone_preview/delay
execute if entity @s[tag=atsetpos] run function worldtool:ui_general/menus/clone/remove_preview

execute if entity @s[tag=mirrorX] run tellraw @s {"text":"Current rotation: Mirror X\n\n\n","color":"gold","bold":true}
execute if entity @s[tag=mirrorY] run tellraw @s {"text":"Current rotation: Mirror Y\n\n\n","color":"gold","bold":true}
execute if entity @s[tag=mirrorZ] run tellraw @s {"text":"Current rotation: Mirror Z\n\n\n","color":"gold","bold":true}
execute unless score @s wt_rotY matches 0 run tellraw @s [{"text":"Current rotation: Y ","color":"gold","bold":true},{"score":{"name":"@s","objective":"wt_rotY"},"color":"gold","bold":true},{"text":"\n\n\n"}]
execute unless score @s wt_rotZ matches 0 run tellraw @s [{"text":"Current rotation: Z ","color":"gold","bold":true},{"score":{"name":"@s","objective":"wt_rotZ"},"color":"gold","bold":true},{"text":"\n\n\n"}]
execute unless score @s wt_rotX matches 0 run tellraw @s [{"text":"Current rotation: X ","color":"gold","bold":true},{"score":{"name":"@s","objective":"wt_rotX"},"color":"gold","bold":true},{"text":"\n\n\n"}]

execute if entity @s[tag=!atsetpos] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run function worldtool:ui_general/menus/clone/select_clone.pos1_1
execute if entity @s[tag=atsetpos] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run function worldtool:ui_general/menus/clone/select_clone.pos1_2

execute if entity @s[tag=!atsetpos,tag=wt_outline_selection] if score $particles worldtool matches ..0 run tellraw @s [{"text": "\nCouldn't display outlining particles, as particles are disabled. ","color":"red"},{"text": "[Enable]","color":"white","hoverEvent": {"action": "show_text","value": "Enable WorldTool particles"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_general/menus/options/particles_toggle"}}]

function worldtool:ui_general/anti_feedback_chat_message/load