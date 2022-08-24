# Called by worldtool:ui_general/clone/rotation_menu/load and rotation setting functions
# Shows the clone rotation menu

execute unless score @s wt.rotX matches -2147483648..2147483647 run scoreboard players set @s wt.rotX 0
execute unless score @s wt.rotY matches -2147483648..2147483647 run scoreboard players set @s wt.rotY 0
execute unless score @s wt.rotZ matches -2147483648..2147483647 run scoreboard players set @s wt.rotZ 0

function worldtool:ui/clear_chat
execute if entity @s[tag=wt.helper_particles] run tag @s add wt.particles

tag @s add wt.menu.clone.rotate
function worldtool:ui/back_button

function worldtool:ui_general/clone/display_rotation

execute if score #temp worldtool matches 1 run tag @s add wt.clone.rotate
execute if score #temp worldtool matches 0 run tag @s remove wt.clone.rotate

scoreboard players operation #temp worldtool = @s wt.rotX
scoreboard players operation #temp2 worldtool = @s wt.rotY
scoreboard players operation #temp3 worldtool = @s wt.rotZ
execute if entity @s[tag=wt.clone.mirror.y] run scoreboard players add #temp worldtool 180
execute if entity @s[tag=wt.clone.mirror.z] run scoreboard players add #temp2 worldtool 180

scoreboard players operation #temp worldtool %= #360 worldtool
scoreboard players operation #temp2 worldtool %= #360 worldtool
scoreboard players operation #temp3 worldtool %= #360 worldtool

execute if score #temp worldtool matches 0 if score #temp2 worldtool matches 0 if score #temp3 worldtool matches 0 run scoreboard players set #temp worldtool 1
scoreboard players operation #temp3 worldtool *= #-1 worldtool

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:armor_stand,tag=worldtool,tag=wt.rotation_preview] if score @s wt.ID = #ID_temp worldtool run function worldtool:ui_general/clone/rotation_menu/set_preview_rotation

tellraw @s [{"nbt":"Translation.\"button.negative_x.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.rotate.negative_x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/x-90"}}," ",{"nbt":"Translation.\"button.positive_x.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.rotate.positive_x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/x90"}}]
tellraw @s [{"nbt":"Translation.\"button.negative_y.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.rotate.negative_y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/y-90"}}," ",{"nbt":"Translation.\"button.positive_y.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.rotate.positive_y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/y90"}}]
tellraw @s [{"nbt":"Translation.\"button.negative_z.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.rotate.negative_z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/z-90"}}," ",{"nbt":"Translation.\"button.positive_z.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.rotate.positive_z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/z90"}}]
tellraw @s ""
tellraw @s[tag=!wt.clone.mirror.x,tag=!wt.clone.mirror.y,tag=!wt.clone.mirror.z] [{"nbt":"Translation.\"button.clone.mirror.x.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_x"}}," ",{"nbt":"Translation.\"button.clone.mirror.y.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_y"}}," ",{"nbt":"Translation.\"button.clone.mirror.z.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_z"}}]
tellraw @s[tag=wt.clone.mirror.x,tag=!wt.clone.mirror.y,tag=!wt.clone.mirror.z] [{"nbt":"Translation.\"button.clone.mirror.x.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_x"}}," ",{"nbt":"Translation.\"button.clone.mirror.y.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_y"}}," ",{"nbt":"Translation.\"button.clone.mirror.z.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_z"}}]
tellraw @s[tag=!wt.clone.mirror.x,tag=wt.clone.mirror.y,tag=!wt.clone.mirror.z] [{"nbt":"Translation.\"button.clone.mirror.x.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_x"}}," ",{"nbt":"Translation.\"button.clone.mirror.y.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_y"}}," ",{"nbt":"Translation.\"button.clone.mirror.z.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_z"}}]
tellraw @s[tag=!wt.clone.mirror.x,tag=!wt.clone.mirror.y,tag=wt.clone.mirror.z] [{"nbt":"Translation.\"button.clone.mirror.x.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_x"}}," ",{"nbt":"Translation.\"button.clone.mirror.y.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_y"}}," ",{"nbt":"Translation.\"button.clone.mirror.z.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_z"}}]
tellraw @s[tag=wt.clone.mirror.x,tag=wt.clone.mirror.y,tag=!wt.clone.mirror.z] [{"nbt":"Translation.\"button.clone.mirror.x.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_x"}}," ",{"nbt":"Translation.\"button.clone.mirror.y.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_y"}}," ",{"nbt":"Translation.\"button.clone.mirror.z.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_z"}}]
tellraw @s[tag=wt.clone.mirror.x,tag=!wt.clone.mirror.y,tag=wt.clone.mirror.z] [{"nbt":"Translation.\"button.clone.mirror.x.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_x"}}," ",{"nbt":"Translation.\"button.clone.mirror.y.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_y"}}," ",{"nbt":"Translation.\"button.clone.mirror.z.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_z"}}]
tellraw @s[tag=!wt.clone.mirror.x,tag=wt.clone.mirror.y,tag=wt.clone.mirror.z] [{"nbt":"Translation.\"button.clone.mirror.x.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_x"}}," ",{"nbt":"Translation.\"button.clone.mirror.y.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_y"}}," ",{"nbt":"Translation.\"button.clone.mirror.z.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_z"}}]
tellraw @s[tag=wt.clone.mirror.x,tag=wt.clone.mirror.y,tag=wt.clone.mirror.z] [{"nbt":"Translation.\"button.clone.mirror.x.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_x"}}," ",{"nbt":"Translation.\"button.clone.mirror.y.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_y"}}," ",{"nbt":"Translation.\"button.clone.mirror.z.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.mirror.z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/settings/mirror_z"}}]

tellraw @s ["\n",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.clone.reset_rotation.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/rotation_menu/reset_rotation"}}]

function worldtool:ui/anti_feedback_chat_message/load
