# Called by various functions
# Menu for viewing and adjusting the blocks per tick settings for various processes

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
function worldtool:ui/settings/back_button

tellraw @s [{"nbt":"Translation.\"info.settings.blocks_per_tick\"","storage": "worldtool:storage","color": "light_purple","bold": true},"\n"]
function worldtool:ui/settings/blocks_per_tick/menu_common
tag @s add wt.menu.settings.blocks_per_tick.page.2

# Greenery
tellraw @s [{"nbt":"Translation.\"label.process.greenery\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/decrease_greenery"}},{"nbt":"BlocksPerTick.Processes[{ID:\"worldtool:greenery\"}].Value","storage": "worldtool:storage","color": "aqua"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/increase_greenery"}}]
# Shatter
tellraw @s [{"nbt":"Translation.\"label.process.shatter\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/decrease_shatter"}},{"nbt":"BlocksPerTick.Processes[{ID:\"worldtool:shatter\"}].Value","storage": "worldtool:storage","color": "aqua"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/increase_shatter"}}]
# Repeat
tellraw @s [{"nbt":"Translation.\"label.process.repeat\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/decrease_repeat"}},{"nbt":"BlocksPerTick.Processes[{ID:\"worldtool:repeat\"}].Value","storage": "worldtool:storage","color": "aqua"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/increase_repeat"}}]
# Smooth
tellraw @s [{"nbt":"Translation.\"label.process.smooth\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/decrease_smooth"}},{"nbt":"BlocksPerTick.Processes[{ID:\"worldtool:smooth\"}].Value","storage": "worldtool:storage","color": "aqua"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/increase_smooth"}}]

# Brush Tool processes
# Paint
tellraw @s [{"nbt":"Translation.\"label.process.brush.paint\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/decrease_paint"}},{"nbt":"BlocksPerTick.Processes[{ID:\"worldtool:paint\"}].Value","storage": "worldtool:storage","color": "aqua"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/increase_paint"}}]
# Place
tellraw @s [{"nbt":"Translation.\"label.process.brush.place\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/decrease_place"}},{"nbt":"BlocksPerTick.Processes[{ID:\"worldtool:place\"}].Value","storage": "worldtool:storage","color": "aqua"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/increase_place"}}]
# Replace
tellraw @s [{"nbt":"Translation.\"label.process.brush.replace\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/decrease_replace_brush"}},{"nbt":"BlocksPerTick.Processes[{ID:\"worldtool:replace_brush\"}].Value","storage": "worldtool:storage","color": "aqua"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/increase_replace_brush"}}]
# Greenery
tellraw @s [{"nbt":"Translation.\"label.process.brush.greenery\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/decrease_greenery_brush"}},{"nbt":"BlocksPerTick.Processes[{ID:\"worldtool:greenery\"}].Value","storage": "worldtool:storage","color": "aqua"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/increase_greenery_brush"}}]

# Shape Generation Tool processes
# Cylinder
tellraw @s [{"nbt":"Translation.\"label.process.shape.cylinder\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/decrease_cylinder"}},{"nbt":"BlocksPerTick.Processes[{ID:\"worldtool:cylinder\"}].Value","storage": "worldtool:storage","color": "aqua"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/increase_cylinder"}}," ",{"nbt":"Translation.\"button.info.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.settings.blocks_per_tick.shape_info.description\"","storage": "worldtool:storage"}}}]
# Cone
tellraw @s [{"nbt":"Translation.\"label.process.shape.cone\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/decrease_cone"}},{"nbt":"BlocksPerTick.Processes[{ID:\"worldtool:cone\"}].Value","storage": "worldtool:storage","color": "aqua"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/increase_cone"}}," ",{"nbt":"Translation.\"button.info.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.settings.blocks_per_tick.shape_info.description\"","storage": "worldtool:storage"}}}]
# Sphere
tellraw @s [{"nbt":"Translation.\"label.process.shape.sphere\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/decrease_sphere"}},{"nbt":"BlocksPerTick.Processes[{ID:\"worldtool:sphere\"}].Value","storage": "worldtool:storage","color": "aqua"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/change/increase_sphere"}}," ",{"nbt":"Translation.\"button.info.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.settings.blocks_per_tick.shape_info.description\"","storage": "worldtool:storage"}}}]

execute if score $blocksPerTickAddons worldtool matches 1.. run tellraw @s ["\n",{"nbt":"Translation.\"button.settings.blocks_per_tick.addon_processes.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.settings.blocks_per_tick.addon_processes.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/addon_page"}}]

tellraw @s ["\n",{"nbt":"Translation.\"label.page\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","bold": true,"color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.previous_page.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/blocks_per_tick/page1"}},"2","    ",{"nbt":"Translation.\"button.close.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.close.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/close"}}]

function worldtool:ui/anti_feedback_chat_message/load
