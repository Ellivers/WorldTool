# Called by various functions
# The generation tool menu

scoreboard players operation #ID_temp worldtool = @s wt_ID

function worldtool:ui/clear_chat
tag @s add wt_user
tag @s remove wt_gentool_dropped
tag @s remove wt_check_block_shge

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker] if score @s wt_ID = #ID_temp worldtool run tag @s add wt_be_seleected

execute if entity @s[tag=wt_outline_selection] at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,tag=wt_be_seleected] align xyz positioned ~.5 ~.5 ~.5 run function worldtool:particles/load_shape_preview

execute unless score @s wt_diameter matches 3..999 run scoreboard players set @s wt_diameter 3
execute unless score @s wt_precision matches 10..300 run scoreboard players set @s wt_precision 100
execute unless score @s wt_degrees matches 1..360 run scoreboard players set @s wt_degrees 360
execute unless score @s wt_rotY matches 0..359 run scoreboard players set @s wt_rotY 0
execute unless score @s wt_rotX matches 0..359 run scoreboard players set @s wt_rotX 0
execute unless score @s wt_height matches 1.. run scoreboard players set @s wt_height 1
execute if predicate worldtool:shapes/circle unless entity @s[predicate=!worldtool:orientation/down,predicate=!worldtool:orientation/south,predicate=!worldtool:orientation/west] run tag @s add wt_tick_gentool_menu
execute if predicate worldtool:shapes/circle unless entity @s[predicate=!worldtool:orientation/down,predicate=!worldtool:orientation/south,predicate=!worldtool:orientation/west] run schedule function worldtool:ui/generation_tool/tick_menu 1t
execute if predicate worldtool:shapes/circle if predicate worldtool:orientation/down run function worldtool:ui/generation_tool/orientation/up
execute if predicate worldtool:shapes/circle if predicate worldtool:orientation/south run function worldtool:ui/generation_tool/orientation/north
execute if predicate worldtool:shapes/circle if predicate worldtool:orientation/west run function worldtool:ui/generation_tool/orientation/east

tellraw @s ["                                                                            ",{"text": "[?]\n","color":"aqua","hoverEvent": {"action":"show_text","value":"Don't know what to do?"},"clickEvent": {"action":"open_url","value": "https://docs.google.com/document/d/1TSxtvy8hIcM4l1fHgRSbBUVkaNZ8twtr9cFbED7ynjw/edit?usp=sharing"}}]
tellraw @s ["",{"text": "Selected shape: ","color": "green"},{"nbt": "SelectedItem.tag.SelectedShape","entity": "@s","color": "aqua","bold": true},{"text": " [Change...]","color": "yellow","hoverEvent": {"action": "show_text","value": "Change the shape to be generated"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/choose_shape"}}]
tellraw @s ["",{"text": "\nDiameter: ","color": "yellow"},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Decrease"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/diameter_decrease"}},{"score": {"name": "@s","objective": "wt_diameter"}},{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Increase"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/diameter_increase"}},{"text": " [Reset]","color": "dark_purple","hoverEvent": {"action": "show_text","value": "Reset the diameter value to 3"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/diameter_reset"}}]
tellraw @s ["",{"text": "Precision ","color": "gold"},{"text": "(?) ","color": "aqua","hoverEvent": {"action": "show_text","value": "How precisely shapes are drawn. Higher values = less precision. Larger diameters might require higher precision to work correctly."}},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Increase"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/precision_decrease"}},{"score": {"name": "@s","objective": "wt_precision"}},{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Decrease"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/precision_increase"}},{"text": " [Reset]","color": "dark_purple","hoverEvent": {"action": "show_text","value": "Reset the precision value to 100"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/precision_reset"}}]
execute unless predicate worldtool:shapes/circle unless predicate worldtool:shapes/sphere run tellraw @s ["",{"text": "Orientation: ","color": "yellow"},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Left"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/orientation/cycle_left"}},{"nbt":"SelectedItem.tag.Direction","entity": "@s"},{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Right"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/orientation/cycle_right"}}]
execute if predicate worldtool:shapes/circle if predicate worldtool:orientation/up run tellraw @s ["",{"text": "Orientation: ","color": "yellow"},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Left"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/orientation/east"}},"Up/Down",{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Right"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/orientation/north"}}]
execute if predicate worldtool:shapes/circle if predicate worldtool:orientation/north run tellraw @s ["",{"text": "Orientation: ","color": "yellow"},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Left"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/orientation/up"}},"North/South",{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Right"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/orientation/east"}}]
execute if predicate worldtool:shapes/circle if predicate worldtool:orientation/east run tellraw @s ["",{"text": "Orientation: ","color": "yellow"},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Left"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/orientation/north"}},"East/West",{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Right"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/orientation/up"}}]
tellraw @s ["",{"text": "Degrees: ","color": "gold"},{"text": "(?) ","color": "aqua","hoverEvent": {"action": "show_text","value": "How many degrees of a circle are drawn. 360 = a full circle"}},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Decrease"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/degrees_decrease"}},{"score": {"name": "@s","objective": "wt_degrees"}},{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Increase"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/degrees_increase"}},{"text": " [Reset]","color": "dark_purple","hoverEvent": {"action": "show_text","value": "Reset the degrees to 360"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/degrees_reset"}}]
execute unless entity @s[predicate=!worldtool:shapes/cylinder,predicate=!worldtool:shapes/cone] run tellraw @s ["",{"text": "Height/Length: ","color": "yellow"},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Decrease"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/height_decrease"}},{"score": {"name": "@s","objective": "wt_height"}},{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Increase"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/height_increase"}},{"text": " [Reset]","color": "dark_purple","hoverEvent": {"action": "show_text","value": "Reset the height/length value to 1"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/height_reset"}}]
execute unless predicate worldtool:shapes/sphere run tellraw @s ["",{"text": "Y rotation: ","color": "gold"},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Decrease"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/y_rot_decrease"}},{"score": {"name": "@s","objective": "wt_rotY"}},{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Increase"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/y_rot_increase"}},{"text": " [Reset]","color": "dark_purple","hoverEvent": {"action": "show_text","value": "Reset the Y rotation to 0"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/y_rot_reset"}}]
execute unless entity @s[predicate=!worldtool:orientation/north,predicate=!worldtool:orientation/south] unless predicate worldtool:shapes/sphere run tellraw @s ["",{"text": "Z rotation: ","color": "yellow"},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Decrease"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/x_rot_decrease"}},{"score": {"name": "@s","objective": "wt_rotX"}},{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Increase"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/x_rot_increase"}},{"text": " [Reset]","color": "dark_purple","hoverEvent": {"action": "show_text","value": "Reset the Z rotation to 0"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/x_rot_reset"}}]
execute unless entity @s[predicate=!worldtool:orientation/east,predicate=!worldtool:orientation/west,predicate=!worldtool:shapes/sphere] run tellraw @s ["",{"text": "X rotation: ","color": "yellow"},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Decrease"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/x_rot_decrease"}},{"score": {"name": "@s","objective": "wt_rotX"}},{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Increase"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/x_rot_increase"}},{"text": " [Reset]","color": "dark_purple","hoverEvent": {"action": "show_text","value": "Reset the X rotation to 0"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/x_rot_reset"}}]
execute unless predicate worldtool:shapes/hollow run tellraw @s {"text": "[Hollow: Off]","color": "aqua","hoverEvent": {"action": "show_text", "value": "Don't replace blocks inside the shape"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/hollow_toggle"}}
execute if predicate worldtool:shapes/hollow run tellraw @s {"text": "[Hollow: On]","color": "aqua","hoverEvent": {"action": "show_text", "value": "Don't replace blocks inside the shape"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/hollow_toggle"}}
execute unless predicate worldtool:shapes/keep run tellraw @s {"text": "[Keep: Off]","color": "green","hoverEvent": {"action": "show_text", "value": "Don't replace existing blocks"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/keep_toggle"}}
execute if predicate worldtool:shapes/keep run tellraw @s {"text": "[Keep: On]","color": "green","hoverEvent": {"action": "show_text", "value": "Don't replace existing blocks"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/keep_toggle"}}
execute unless predicate worldtool:shapes/continuous_place run tellraw @s {"text": "[Continuous placement: Off]","color": "light_purple","hoverEvent": {"action": "show_text", "value": "Generate the selected shape every time you right-click the tool"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/cont_place_toggle"}}
execute if predicate worldtool:shapes/continuous_place run tellraw @s {"text": "[Continuous placement: On]","color": "light_purple","hoverEvent": {"action": "show_text", "value": "Generate the selected shape every time you right-click the tool"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/cont_place_toggle"}}
tellraw @s {"text": "[Nudge position...]","color": "dark_aqua","hoverEvent": {"action": "show_text","value": "Move the selected position one block at a time"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/move_selection/select"}}

tellraw @s {"text": "\n[Select new block...]","color": "dark_green","hoverEvent": {"action": "show_text","value": "Select a new block to use"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/select/select_block"}}
execute if entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,tag=wt_be_seleected] run tellraw @s ["",{"text": "[Run!]  ","color": "green","bold": true,"hoverEvent": {"action": "show_text","value": "Run generation with the selected settings"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/start"}},{"text": "[Cancel]","hoverEvent": {"action": "show_text","value": "Close all menus and cancel"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/cancel"}}]
execute unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,tag=wt_be_seleected] run tellraw @s ["",{"text": "[Run!]  ","color": "gray","bold": true,"hoverEvent": {"action": "show_text","value": "Set a position to continue"}},{"text": "[Cancel]","hoverEvent": {"action": "show_text","value": "Close all menus and cancel"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/cancel"}}]

function worldtool:ui/anti_feedback_chat_message/load
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,tag=wt_be_seleected] remove wt_be_seleected
