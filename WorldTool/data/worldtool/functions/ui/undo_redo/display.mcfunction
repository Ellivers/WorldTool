# Called by worldtool:ui_general/options/menu and worldtool:ui_shapes/options/menu
# Displays the undo and redo buttons

execute store result score #temp worldtool if data storage rx.playerdb:io player.data.WorldTool.History[0]
execute store result score #temp2 worldtool if data storage rx.playerdb:io player.data.WorldTool.Future[0]

execute if score $enableBackups worldtool matches 1 if score $playerdbAvailable worldtool matches 1 if score #temp worldtool matches 1 if score #temp2 worldtool matches 1 run tellraw @s ["",{"nbt":"Translation.\"button.undo.name\"","storage": "worldtool:storage","color": "#036ffc","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.undo.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/undo_redo/undo"}}," ",{"nbt":"Translation.\"button.redo.name\"","storage": "worldtool:storage","color": "#7c2bff","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.redo.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/undo_redo/redo"}}]
execute if score $enableBackups worldtool matches 1 if score $playerdbAvailable worldtool matches 1 if score #temp worldtool matches 1 if score #temp2 worldtool matches 0 run tellraw @s ["",{"nbt":"Translation.\"button.undo.name\"","storage": "worldtool:storage","color": "#036ffc","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.undo.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/undo_redo/undo"}}," ",{"nbt":"Translation.\"button.redo.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.redo.description\"","storage": "worldtool:storage"}}}]
execute if score $enableBackups worldtool matches 1 if score $playerdbAvailable worldtool matches 1 if score #temp worldtool matches 0 if score #temp2 worldtool matches 1 run tellraw @s ["",{"nbt":"Translation.\"button.undo.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.undo.description\"","storage": "worldtool:storage"}}}," ",{"nbt":"Translation.\"button.redo.name\"","storage": "worldtool:storage","color": "#036ffc","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.redo.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/undo_redo/redo"}}]
execute if score $enableBackups worldtool matches 1 if score $playerdbAvailable worldtool matches 1 if score #temp worldtool matches 0 if score #temp2 worldtool matches 0 run tellraw @s ["",{"nbt":"Translation.\"button.undo.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.undo.description\"","storage": "worldtool:storage"}}}," ",{"nbt":"Translation.\"button.redo.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.redo.description\"","storage": "worldtool:storage"}}}]
