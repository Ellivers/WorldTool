# Called by various functions
# Removes all tags used for process setup

tag @s add wt.setup.fill
tag @s add wt.setup.clone
tag @s add wt.setup.filter_measure
tag @s add wt.setup.randomize
tag @s add wt.setup.replace
tag @s add wt.setup.checkered

function #worldtool:addon/process_start/remove_setup_tags
