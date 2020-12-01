function worldtool:ui/player_removetags

function worldtool:ui/clear_chat
tellraw @s ["                                                                            ",{"text": "[?]\n","color":"aqua","hoverEvent": {"action":"show_text","value":"Don't know what to do?"},"clickEvent": {"action":"open_url","value": "https://docs.google.com/document/d/1TSxtvy8hIcM4l1fHgRSbBUVkaNZ8twtr9cFbED7ynjw/edit?usp=sharing"}}]

execute unless score @s wt_brush_size matches 1..39 run scoreboard players set @s wt_brush_size 1
tellraw @s ["",{"text":"Brush size: ","color":"dark_aqua"},{"text":"< ","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value":"Decrease brush size"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/brush_size_decrease"}},{"score":{"name":"@s","objective":"wt_brush_size"}},{"text":" >","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value":"Increase brush size"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/brush_size_increase"}}]

execute if predicate worldtool:brushes/paint run tag @s add wt_brush.paint
execute if predicate worldtool:brushes/place run tag @s add wt_brush.place
execute if predicate worldtool:brushes/replace run tag @s add wt_brush.replace
execute if predicate worldtool:brushes/circle run tag @s add wt_brush.circle
execute if predicate worldtool:brushes/sphere run tag @s add wt_brush.sphere
execute if predicate worldtool:brushes/structure run tag @s add wt_brush.structure

execute if predicate worldtool:brushes/any unless data entity @s SelectedItem.tag.Brush run tellraw @s {"text":"\n\nPlease select a brush.","color":"gold","italic":true}
execute if entity @s[tag=wt_brush.paint] run tellraw @s [{"text":"\n\n"},{"text":"Current brush: Paint","color":"yellow","bold":true}]
execute if entity @s[tag=wt_brush.place] run tellraw @s [{"text":"\n\n"},{"text":"Current brush: Place","color":"yellow","bold":true}]
execute if entity @s[tag=wt_brush.replace] run tellraw @s [{"text":"\n\n"},{"text":"Current brush: Replace","color":"yellow","bold":true},{"text":"\n[Replace new block...]","color":"aqua","bold":false,"hoverEvent":{"action":"show_text","value":"Select a new block to replace"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_replace/select"}}]
execute if entity @s[tag=wt_brush.sphere] if predicate worldtool:brush/hollow run tellraw @s [{"text":"\n\n"},{"text":"Current brush: Sphere","color":"yellow","bold":true},{"text":"\n[Hollow: On]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"Toggle between filling the spheres with one block and having them filled with air"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_brush/settings/hollow_toggle"}}]
execute if entity @s[tag=wt_brush.sphere] unless predicate worldtool:brush/hollow run tellraw @s [{"text":"\n\n"},{"text":"Current brush: Sphere","color":"yellow","bold":true},{"text":"\n[Hollow: Off]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"Toggle between filling the spheres with one block and having them filled with air"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_brush/settings/hollow_toggle"}}]
execute if entity @s[tag=wt_brush.circle] run tellraw @s [{"text":"\n\n"},{"text":"Current brush: Circle","color":"yellow","bold":true}]
execute if predicate worldtool:brushes/color run tellraw @s [{"text":"\n\n"},{"text":"Current brush: Color  ","color":"yellow","bold":true}]
execute if entity @s[tag=wt_brush.structure] run tellraw @s [{"text":"\n\n"},{"text":"Current brush: Structure","color":"yellow","bold":true}]
execute if entity @s[tag=wt_brush.place] if predicate worldtool:brush/overwrite_blocks run tellraw @s [{"text":"[Replace existing blocks: On]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"Toggle between replacing existing blocks and only replacing air blocks"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_brush/settings/place_rblock_toggle"}}]
execute if entity @s[tag=wt_brush.place] unless predicate worldtool:brush/overwrite_blocks run tellraw @s [{"text":"[Replace existing blocks: Off]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"Toggle between replacing existing blocks and only replacing air blocks"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_brush/settings/place_rblock_toggle"}}]
execute if entity @s[tag=wt_brush.structure] run tellraw @s {"text": "[Select new structure...]","color": "aqua","hoverEvent": {"action": "show_text","value": "Select a new structure to place"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/brush/select_structure"}}
execute unless entity @s[tag=!wt_brush.circle,tag=!wt_brush.place,tag=!wt_brush.structure] if predicate worldtool:brush/before_block run tellraw @s {"text":"[Placement: On block]","color":"blue","hoverEvent":{"action":"show_text","value":"Toggle where the center should be placed. Inside the targeted block, or on the side of the targeted block"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_brush/settings/before_block_toggle"}}
execute unless entity @s[tag=!wt_brush.circle,tag=!wt_brush.place,tag=!wt_brush.structure] unless predicate worldtool:brush/before_block run tellraw @s {"text":"[Placement: In block]","color":"blue","hoverEvent":{"action":"show_text","value":"Toggle where the center should be placed. Inside the targeted block, or on the side of the targeted block"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_brush/settings/before_block_toggle"}}
execute if predicate worldtool:brushes/color run tellraw @s [{"text":"Current color: ","color":"gold"},{"nbt":"Item.tag.BrushSettings.Color","entity":"@e[type=minecraft:item,sort=nearest,limit=1]"},{"text":"\n[Change color]","color":"aqua","hoverEvent":{"action":"show_text","value":"Change color"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_color"}}]
execute if entity @s[tag=wt_brush.structure] if predicate worldtool:brush/structure_rot/none run tellraw @s ["",{"text": "Structure rotation: ","color": "gold","hoverEvent": {"action": "show_text","value": "Choose the Y rotation of the structure"}},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Left"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/brush/select_brush/settings/structure_rot_cycle_left"}},{"text": "None","color":"green"},{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Right"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/brush/select_brush/settings/structure_rot_cycle_right"}}]
execute if entity @s[tag=wt_brush.structure] if predicate worldtool:brush/structure_rot/90 run tellraw @s ["",{"text": "Structure rotation: ","color": "gold","hoverEvent": {"action": "show_text","value": "Choose the Y rotation of the structure"}},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Left"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/brush/select_brush/settings/structure_rot_cycle_left"}},{"text": "90","color":"green"},{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Right"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/brush/select_brush/settings/structure_rot_cycle_right"}}]
execute if entity @s[tag=wt_brush.structure] if predicate worldtool:brush/structure_rot/180 run tellraw @s ["",{"text": "Structure rotation: ","color": "gold","hoverEvent": {"action": "show_text","value": "Choose the Y rotation of the structure"}},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Left"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/brush/select_brush/settings/structure_rot_cycle_left"}},{"text": "180","color":"green"},{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Right"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/brush/select_brush/settings/structure_rot_cycle_right"}}]
execute if entity @s[tag=wt_brush.structure] if predicate worldtool:brush/structure_rot/-90 run tellraw @s ["",{"text": "Structure rotation: ","color": "gold","hoverEvent": {"action": "show_text","value": "Choose the Y rotation of the structure"}},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Left"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/brush/select_brush/settings/structure_rot_cycle_left"}},{"text": "-90","color":"green"},{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Right"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/brush/select_brush/settings/structure_rot_cycle_right"}}]
execute if entity @s[tag=wt_brush.structure] run tellraw @s ["",{"text": "Structure mirror: ","color": "dark_purple","hoverEvent": {"action": "show_text","value": "Choose how to mirror the structure"}},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Left"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/brush/select_brush/settings/structure_mirror_left"}},{"nbt":"SelectedItem.tag.BrushSettings.StructureMirror","entity": "@s","color":"green"},{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Right"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/brush/select_brush/settings/structure_mirror_right"}}]
execute if entity @s[tag=wt_brush.structure] run tellraw @s {"text": "[Structure offset...]","color": "dark_green","hoverEvent": {"action": "show_text","value": "Change the relative position of the loaded structure"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/brush/select_brush/settings/structure_offset_menu"}}
execute unless entity @s[tag=!wt_brush.place,tag=!wt_brush.paint,tag=!wt_brush.replace] unless predicate worldtool:brush/flat run tellraw @s {"text": "[Flat: Off]","color": "dark_purple","hoverEvent": {"action": "show_text","value": "Choose between a cube shape (default) and a flat shape."},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/brush/select_brush/settings/flat_toggle"}}
execute unless entity @s[tag=!wt_brush.place,tag=!wt_brush.paint,tag=!wt_brush.replace] if predicate worldtool:brush/flat run tellraw @s {"text": "[Flat: On]","color": "dark_purple","hoverEvent": {"action": "show_text","value": "Choose between a cube shape (default) and a flat shape."},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/brush/select_brush/settings/flat_toggle"}}
execute unless entity @s[tag=!wt_brush.circle,predicate=!worldtool:brush/flat] run tellraw @s ["",{"text": "Axis: ","color": "gold","hoverEvent": {"action": "show_text","value": "Choose on which axis to place"}},{"text": "< ","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Left"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/brush/select_brush/settings/axis_cycle_left"}},{"nbt": "SelectedItem.tag.BrushSettings.Axis","entity": "@s","color":"green"},{"text": " >","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Right"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/brush/select_brush/settings/axis_cycle_right"}}]
execute unless entity @s[tag=wt_brush.structure] unless predicate worldtool:brush/load_block run tellraw @s {"text":"[Update block: Off]","color": "green","hoverEvent": {"action": "show_text","value": "Update the used process block every time the brush is used"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/brush/select_brush/settings/load_block_toggle"}}
execute unless entity @s[tag=wt_brush.structure] if predicate worldtool:brush/load_block run tellraw @s {"text":"[Update block: On]","color": "green","hoverEvent": {"action": "show_text","value": "Update the used process block every time the brush is used"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/brush/select_brush/settings/load_block_toggle"}}

execute if entity @s[predicate=!worldtool:brushes/color,predicate=!worldtool:brushes/structure] run tellraw @p [{"text":"\n\n\n[Select new block...]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Select a new block for your brush"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_block"}},{"text":"[Select new brush...]","color":"light_purple","hoverEvent":{"action":"show_text","value":"Select a brush to use"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_brush/select"}}]
execute unless entity @s[predicate=!worldtool:brushes/color,predicate=!worldtool:brushes/structure] run tellraw @p {"text":"\n\n\n[Select new brush...]  ","color":"light_purple","hoverEvent":{"action":"show_text","value":"Select a brush to use"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_brush/select"}}

tag @s remove wt_brush.paint
tag @s remove wt_brush.place
tag @s remove wt_brush.replace
tag @s remove wt_brush.circle
tag @s remove wt_brush.sphere
tag @s remove wt_brush.structure

function worldtool:ui/anti_feedback_chat_message/load