tag @s add rotating_clone
tag @s add backbuttonplzthx
function worldtool:ui/clear_chat

execute as @e[type=minecraft:armor_stand,tag=show_rot] if score @s wt_ID = @p wt_ID run tag @s add found
execute unless entity @e[type=minecraft:armor_stand,tag=show_rot,tag=found] run summon armor_stand ^ ^-.5 ^1.5 {Invisible:1b,Tags:["show_rot","wt_particles"],Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:observer",Count:1b}],Pose:{Head:[0f,1f,0f]}}
scoreboard players operation @e[type=minecraft:armor_stand,tag=show_rot,sort=nearest,limit=1] wt_ID = @s wt_ID
execute as @e[type=minecraft:armor_stand,tag=show_rot] if score @s wt_ID = @p wt_ID run function worldtool:ui/clone_rotate/show_set_rot

execute if entity @s[tag=mirrorX] run tellraw @s {"text":"Current rotation: Mirror X","color":"gold","bold":true}
execute if entity @s[tag=mirrorY] run tellraw @s {"text":"Current rotation: Mirror Y","color":"gold","bold":true}
execute if entity @s[tag=mirrorZ] run tellraw @s {"text":"Current rotation: Mirror Z","color":"gold","bold":true}
execute unless score @s rotY matches 0 run tellraw @s [{"text":"Current rotation: Y ","color":"gold","bold":true},{"score":{"name":"@s","objective":"rotY"},"color":"gold","bold":true}]
execute unless score @s rotZ matches 0 run tellraw @s [{"text":"Current rotation: Z ","color":"gold","bold":true},{"score":{"name":"@s","objective":"rotZ"},"color":"gold","bold":true}]
execute unless score @s rotX matches 0 run tellraw @s [{"text":"Current rotation: X ","color":"gold","bold":true},{"score":{"name":"@s","objective":"rotX"},"color":"gold","bold":true}]

tellraw @s [{"text":"\n\n[X -90]   ","color":"light_purple","hoverEvent":{"action":"show_text","value":"X -90"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone_rotate/-x"}},{"text":"[X +90]\n","color":"light_purple","hoverEvent":{"action":"show_text","value":"X +90"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone_rotate/x"}}]
tellraw @s [{"text":"[Y -90]   ","color":"light_purple","hoverEvent":{"action":"show_text","value":"Y -90"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone_rotate/-y"}},{"text":"[Y +90]\n","color":"light_purple","hoverEvent":{"action":"show_text","value":"Y +90"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone_rotate/y"}}]
tellraw @s [{"text":"[Z -90]   ","color":"light_purple","hoverEvent":{"action":"show_text","value":"Z -90"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone_rotate/-z"}},{"text":"[Z +90]\n","color":"light_purple","hoverEvent":{"action":"show_text","value":"Z +90"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone_rotate/z"}}]
tellraw @s [{"text": "\n[Mirror X]  ","color":"yellow","hoverEvent": {"action": "show_text","value": "Mirror the selection on the X axis"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/clone_rotate/mirror_x"}},{"text": "[Mirror Y]  ","color":"yellow","hoverEvent": {"action": "show_text","value": "Mirror the selection on the Y axis"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/clone_rotate/mirror_y"}},{"text": "[Mirror Z]","color":"yellow","hoverEvent": {"action": "show_text","value": "Mirror the selection on the Z axis"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/clone_rotate/mirror_z"}}]
tellraw @s [{"text": "\n[Clear rotation]","color":"dark_purple","hoverEvent": {"action": "show_text","value": "Clear the rotation/mirror you have selected"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/clone_rotate/clear_rotation"}},{"text":"\n[Done...]","color":"aqua","hoverEvent":{"action":"show_text","value":"Go back to the clone menu"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/select_clone"}}]
schedule function worldtool:ui/clone_rotate/remove_tag 1t
execute as @e[type=minecraft:armor_stand,tag=show_rot,tag=found] run tag @s remove found

execute if score $particles worldtool matches ..0 run tellraw @s [{"text": "\nCouldn't display observer rotation origin particles, as particles are disabled. ","color":"red"},{"text": "[Enable]","color":"white","hoverEvent": {"action": "show_text","value": "Enable WorldTool particles"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/options/particles_toggle"}}]

function worldtool:ui/anti_feedback_chat_message/load