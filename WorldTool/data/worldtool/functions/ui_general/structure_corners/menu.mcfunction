# Called by worldtool:ui_general/page2
# Displays the stucture corners menu

function worldtool:ui/clear_chat
tag @s add wt.menu.structure_corners
tag @s add wt.allow_input

function worldtool:ui_general/back_button

function #rx.playerdb:api/v2/get/self

execute if score $playerdbAvailable worldtool matches 1 run tellraw @s ["",{"nbt":"Translation.\"label.structure_corners.structure_name\"","storage": "worldtool:storage"},{"nbt":"player.data.WorldTool.StructureCornerName","storage": "rx.playerdb:io","color": "green"}," ",{"nbt":"Translation.\"button.structure_corners.change.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.structure_corners.change.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon item ~ ~ ~ {Tags:[worldtool,wt.selected_data],PickupDelay:32767s,Item:{id:\"minecraft:stick\",Count:1b,tag:{WorldTool:{ StructureName:\"worldtool:example\" }}}}"}},"\n"]

tellraw @s {"nbt":"Translation.\"button.run.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.structure_corners.run.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/structure_corners/run"}}
function worldtool:ui/close_button

function worldtool:ui/anti_feedback_chat_message/load
