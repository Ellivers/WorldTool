# Called by various functions
# Removes all of position 1's tags that are tied to processes

tag @s remove wt.process.fill
tag @s remove wt.process.replace
tag @s remove wt.process.replace.normal
tag @s remove wt.process.replace.exclude
tag @s remove wt.process.filter_measure
tag @s remove wt.process.filter_measure.normal
tag @s remove wt.process.filter_measure.exclude

tag @s remove wt.message.non_default
tag @s remove wt.message.measure

function #worldtool:addon/ui/remove_process_tags
