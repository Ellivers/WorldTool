# Called by worldtool:ui_general/greenery/menu and various other functions
# Displays the different plant sources

function worldtool:ui/clear_chat
tag @s add wt.menu.greenery.select_source

function worldtool:ui/back_button

tellraw @s[tag=!wt.greenery.source.plains] {"nbt":"Translation.\"button.greenery.source.plains.name\"","storage": "worldtool:storage","color": "#91BD59","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.greenery.source.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/greenery/plant_sources/plains"}}
tellraw @s[tag=wt.greenery.source.plains] [{"nbt":"Translation.\"button.greenery.source.plains.name\"","storage": "worldtool:storage","color": "gray"}," ",{"nbt":"Translation.\"info.selected\"","storage": "worldtool:storage"}]

tellraw @s[tag=!wt.greenery.source.sunflower_plains] {"nbt":"Translation.\"button.greenery.source.sunflower_plains.name\"","storage": "worldtool:storage","color": "#91BD59","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.greenery.source.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/greenery/plant_sources/sunflower_plains"}}
tellraw @s[tag=wt.greenery.source.sunflower_plains] [{"nbt":"Translation.\"button.greenery.source.sunflower_plains.name\"","storage": "worldtool:storage","color": "gray"}," ",{"nbt":"Translation.\"info.selected\"","storage": "worldtool:storage"}]

tellraw @s[tag=!wt.greenery.source.flower_forest] {"nbt":"Translation.\"button.greenery.source.flower_forest.name\"","storage": "worldtool:storage","color": "#79C05A","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.greenery.source.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/greenery/plant_sources/flower_forest"}}
tellraw @s[tag=wt.greenery.source.flower_forest] [{"nbt":"Translation.\"button.greenery.source.flower_forest.name\"","storage": "worldtool:storage","color": "gray"}," ",{"nbt":"Translation.\"info.selected\"","storage": "worldtool:storage"}]

tellraw @s[tag=!wt.greenery.source.taiga] {"nbt":"Translation.\"button.greenery.source.taiga.name\"","storage": "worldtool:storage","color": "#86B783","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.greenery.source.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/greenery/plant_sources/taiga"}}
tellraw @s[tag=wt.greenery.source.taiga] [{"nbt":"Translation.\"button.greenery.source.taiga.name\"","storage": "worldtool:storage","color": "gray"}," ",{"nbt":"Translation.\"info.selected\"","storage": "worldtool:storage"}]

tellraw @s[tag=!wt.greenery.source.desert] {"nbt":"Translation.\"button.greenery.source.desert.name\"","storage": "worldtool:storage","color": "#BFB755","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.greenery.source.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/greenery/plant_sources/desert"}}
tellraw @s[tag=wt.greenery.source.desert] [{"nbt":"Translation.\"button.greenery.source.desert.name\"","storage": "worldtool:storage","color": "gray"}," ",{"nbt":"Translation.\"info.selected\"","storage": "worldtool:storage"}]

tellraw @s[tag=!wt.greenery.source.ocean] {"nbt":"Translation.\"button.greenery.source.ocean.name\"","storage": "worldtool:storage","color": "#3F76E4","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.greenery.source.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/greenery/plant_sources/ocean"}}
tellraw @s[tag=wt.greenery.source.ocean] [{"nbt":"Translation.\"button.greenery.source.ocean.name\"","storage": "worldtool:storage","color": "gray"}," ",{"nbt":"Translation.\"info.selected\"","storage": "worldtool:storage"}]

tellraw @s[tag=!wt.greenery.source.warm_ocean] {"nbt":"Translation.\"button.greenery.source.warm_ocean.name\"","storage": "worldtool:storage","color": "#43D5EE","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.greenery.source.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/greenery/plant_sources/warm_ocean"}}
tellraw @s[tag=wt.greenery.source.warm_ocean] [{"nbt":"Translation.\"button.greenery.source.warm_ocean.name\"","storage": "worldtool:storage","color": "gray"}," ",{"nbt":"Translation.\"info.selected\"","storage": "worldtool:storage"}]

function #worldtool:addon/greenery/list_sources

function worldtool:ui/anti_feedback_chat_message/load
