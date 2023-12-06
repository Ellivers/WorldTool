# Called by worldtool:ui_general/options/menu and worldtool:ui_shapes/options/menu
# Displays the particle indicator option

execute if entity @s[tag=!wt.helper_particles.in_menu,tag=!wt.helper_particles.always] run tellraw @s ["",{"nbt":"Translation.\"label.particles\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.particles.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.left.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/particles/cycle_left"}},{"nbt":"Translation.\"particles.off\"","storage": "worldtool:storage","color": "red"},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.right.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/particles/cycle_right"}}]
execute if entity @s[tag=wt.helper_particles.in_menu] run tellraw @s ["",{"nbt":"Translation.\"label.particles\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.particles.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.left.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/particles/cycle_left"}},{"nbt":"Translation.\"particles.in_menu\"","storage": "worldtool:storage","color": "green"},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.right.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/particles/cycle_right"}}]
execute if entity @s[tag=wt.helper_particles.always] run tellraw @s ["",{"nbt":"Translation.\"label.particles\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.particles.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.left.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/particles/cycle_left"}},{"nbt":"Translation.\"particles.always\"","storage": "worldtool:storage","color": "green"},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.right.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/particles/cycle_right"}}]