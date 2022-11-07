# Called by the last page of the blocks per tick menu
# Displays the page for blocks per tick entries added by addons

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat

tellraw @s [{"nbt":"Translation.\"button.back.name\"","storage": "worldtool:storage","color":"yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.back.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/settings/blocks_per_tick/page2"}},"\n"]
tellraw @s [{"nbt":"Translation.\"info.settings.blocks_per_tick.addon_processes\"","storage": "worldtool:storage","color": "yellow"},"\n"]
function worldtool:ui/settings/blocks_per_tick/menu_common
tag @s add wt.menu.settings.blocks_per_tick.page.addon

function #worldtool:addon/addon_blocks_per_tick_list
