# Called by various functions (as the player)
# Removes some tags not tied to processes

tag @s remove wt.pos1
tag @s remove wt.particles
tag @s remove wt.can_forceload
tag @s remove wt.position

function #worldtool:addon/process/remove_non_process_tags
