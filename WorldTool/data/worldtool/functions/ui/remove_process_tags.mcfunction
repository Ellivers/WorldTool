# Called by various functions
# Removes all of position 1's tags that are tied to processes

tag @s remove wt.process.fill
tag @s remove wt.process.replace
tag @s remove wt.process.replace.normal
tag @s remove wt.process.replace.exclude

function #worldtool:addon/ui/remove_process_tags
