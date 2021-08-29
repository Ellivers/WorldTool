# Called by various functions

tag @s[tag=!wt.user] add wt.outline_selection
tag @s add wt.user

function worldtool:ui/clear_chat
tellraw @s [{"nbt":"Translation.\"button.help.spacer\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.help.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.help.description\""}},"clickEvent": {"action": "open_url","value": "https://github.com/Ellivers/WorldTool/wiki"}}]
